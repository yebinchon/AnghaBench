
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {scalar_t__ pad; scalar_t__ code; size_t index; int max_height; int min_height; int min_width; int max_width; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int height; int width; } ;


 int EINVAL ;
 int RES_ISP ;
 int RES_JPEG ;
 scalar_t__ S5C73M3_ISP_FMT ;
 scalar_t__ S5C73M3_ISP_PAD ;
 scalar_t__ S5C73M3_JPEG_FMT ;
 TYPE_1__** s5c73m3_resolutions ;
 size_t* s5c73m3_resolutions_len ;

__attribute__((used)) static int s5c73m3_enum_frame_size(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_frame_size_enum *fse)
{
 int idx;

 if (fse->pad == S5C73M3_ISP_PAD) {
  if (fse->code != S5C73M3_ISP_FMT)
   return -EINVAL;
  idx = RES_ISP;
 } else{
  if (fse->code != S5C73M3_JPEG_FMT)
   return -EINVAL;
  idx = RES_JPEG;
 }

 if (fse->index >= s5c73m3_resolutions_len[idx])
  return -EINVAL;

 fse->min_width = s5c73m3_resolutions[idx][fse->index].width;
 fse->max_width = fse->min_width;
 fse->max_height = s5c73m3_resolutions[idx][fse->index].height;
 fse->min_height = fse->max_height;

 return 0;
}
