#version 450

layout(location = 0) in vec3 inPosition;
layout(location = 1) in vec3 inColor;

layout(location = 0) out vec3 fragColor;

layout(set = 0, binding = 0) uniform Locals {
    mat4 u_Transform;
};


void main() {
    gl_Position = u_Transform * vec4(inPosition, 1.0);
    fragColor = inColor;
}