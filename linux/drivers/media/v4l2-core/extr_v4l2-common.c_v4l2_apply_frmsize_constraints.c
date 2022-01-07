
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_frmsize_stepwise {int step_height; int max_height; int min_height; int step_width; int max_width; int min_width; } ;


 int clamp_roundup (int ,int ,int ,int ) ;

void v4l2_apply_frmsize_constraints(u32 *width, u32 *height,
        const struct v4l2_frmsize_stepwise *frmsize)
{
 if (!frmsize)
  return;





 *width = clamp_roundup(*width, frmsize->min_width, frmsize->max_width,
          frmsize->step_width);
 *height = clamp_roundup(*height, frmsize->min_height, frmsize->max_height,
    frmsize->step_height);
}
