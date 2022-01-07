
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vimc_pix_map {int dummy; } ;
struct TYPE_2__ {int step_width; int step_height; int max_height; int min_height; int max_width; int min_width; } ;
struct v4l2_frmsizeenum {TYPE_1__ stepwise; int type; int pixel_format; scalar_t__ index; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_FRMSIZE_TYPE_CONTINUOUS ;
 int VIMC_FRAME_MAX_HEIGHT ;
 int VIMC_FRAME_MAX_WIDTH ;
 int VIMC_FRAME_MIN_HEIGHT ;
 int VIMC_FRAME_MIN_WIDTH ;
 struct vimc_pix_map* vimc_pix_map_by_code (int ) ;

__attribute__((used)) static int vimc_cap_enum_framesizes(struct file *file, void *fh,
        struct v4l2_frmsizeenum *fsize)
{
 const struct vimc_pix_map *vpix;

 if (fsize->index)
  return -EINVAL;


 vpix = vimc_pix_map_by_code(fsize->pixel_format);
 if (!vpix)
  return -EINVAL;

 fsize->type = V4L2_FRMSIZE_TYPE_CONTINUOUS;
 fsize->stepwise.min_width = VIMC_FRAME_MIN_WIDTH;
 fsize->stepwise.max_width = VIMC_FRAME_MAX_WIDTH;
 fsize->stepwise.min_height = VIMC_FRAME_MIN_HEIGHT;
 fsize->stepwise.max_height = VIMC_FRAME_MAX_HEIGHT;
 fsize->stepwise.step_width = 1;
 fsize->stepwise.step_height = 1;

 return 0;
}
