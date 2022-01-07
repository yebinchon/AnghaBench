
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {scalar_t__ index; scalar_t__ code; int min_height; int max_height; int max_width; int min_width; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {scalar_t__ code; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int S5K6AA_WIN_HEIGHT_MAX ;
 int S5K6AA_WIN_HEIGHT_MIN ;
 int S5K6AA_WIN_WIDTH_MAX ;
 int S5K6AA_WIN_WIDTH_MIN ;
 TYPE_1__* s5k6aa_formats ;

__attribute__((used)) static int s5k6aa_enum_frame_size(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      struct v4l2_subdev_frame_size_enum *fse)
{
 int i = ARRAY_SIZE(s5k6aa_formats);

 if (fse->index > 0)
  return -EINVAL;

 while (--i)
  if (fse->code == s5k6aa_formats[i].code)
   break;

 fse->code = s5k6aa_formats[i].code;
 fse->min_width = S5K6AA_WIN_WIDTH_MIN;
 fse->max_width = S5K6AA_WIN_WIDTH_MAX;
 fse->max_height = S5K6AA_WIN_HEIGHT_MIN;
 fse->min_height = S5K6AA_WIN_HEIGHT_MAX;

 return 0;
}
