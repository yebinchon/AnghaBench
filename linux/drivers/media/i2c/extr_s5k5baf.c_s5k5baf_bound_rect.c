
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_rect {int height; int top; int width; int left; } ;


 int s5k5baf_bound_range (int *,int *,int ) ;

__attribute__((used)) static void s5k5baf_bound_rect(struct v4l2_rect *r, u32 width, u32 height)
{
 s5k5baf_bound_range(&r->left, &r->width, width);
 s5k5baf_bound_range(&r->top, &r->height, height);
}
