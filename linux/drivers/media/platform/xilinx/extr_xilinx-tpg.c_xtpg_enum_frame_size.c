
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {scalar_t__ pad; scalar_t__ code; int max_height; int min_height; int max_width; int min_width; scalar_t__ index; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; int height; int width; } ;


 int EINVAL ;
 int XVIP_MAX_HEIGHT ;
 int XVIP_MAX_WIDTH ;
 int XVIP_MIN_HEIGHT ;
 int XVIP_MIN_WIDTH ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ;

__attribute__((used)) static int xtpg_enum_frame_size(struct v4l2_subdev *subdev,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_frame_size_enum *fse)
{
 struct v4l2_mbus_framefmt *format;

 format = v4l2_subdev_get_try_format(subdev, cfg, fse->pad);

 if (fse->index || fse->code != format->code)
  return -EINVAL;




 if (fse->pad == 0) {
  fse->min_width = XVIP_MIN_WIDTH;
  fse->max_width = XVIP_MAX_WIDTH;
  fse->min_height = XVIP_MIN_HEIGHT;
  fse->max_height = XVIP_MAX_HEIGHT;
 } else {
  fse->min_width = format->width;
  fse->max_width = format->width;
  fse->min_height = format->height;
  fse->max_height = format->height;
 }

 return 0;
}
