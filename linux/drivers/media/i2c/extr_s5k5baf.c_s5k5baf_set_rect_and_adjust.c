
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {int height; int width; } ;
typedef enum selection_rect { ____Placeholder_selection_rect } selection_rect ;


 int R_INVALID ;
 int s5k5baf_bound_rect (struct v4l2_rect*,int ,int ) ;

__attribute__((used)) static void s5k5baf_set_rect_and_adjust(struct v4l2_rect **rects,
     enum selection_rect first,
     struct v4l2_rect *v)
{
 struct v4l2_rect *r, *br;
 enum selection_rect i = first;

 *rects[first] = *v;
 do {
  r = rects[i];
  br = rects[i - 1];
  s5k5baf_bound_rect(r, br->width, br->height);
 } while (++i != R_INVALID);
 *v = *rects[first];
}
