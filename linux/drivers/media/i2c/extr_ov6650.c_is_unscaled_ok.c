
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {int width; int height; } ;



__attribute__((used)) static bool is_unscaled_ok(int width, int height, struct v4l2_rect *rect)
{
 return width > rect->width >> 1 || height > rect->height >> 1;
}
