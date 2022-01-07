
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfe_line {int dummy; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_rect {int width; int height; } ;
struct v4l2_mbus_framefmt {int width; int height; } ;
typedef enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;


 int MSM_VFE_PAD_SINK ;
 int SCALER_RATIO_MAX ;
 struct v4l2_mbus_framefmt* __vfe_get_format (struct vfe_line*,struct v4l2_subdev_pad_config*,int ,int) ;

__attribute__((used)) static void vfe_try_compose(struct vfe_line *line,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_rect *rect,
       enum v4l2_subdev_format_whence which)
{
 struct v4l2_mbus_framefmt *fmt;

 fmt = __vfe_get_format(line, cfg, MSM_VFE_PAD_SINK, which);

 if (rect->width > fmt->width)
  rect->width = fmt->width;

 if (rect->height > fmt->height)
  rect->height = fmt->height;

 if (fmt->width > rect->width * SCALER_RATIO_MAX)
  rect->width = (fmt->width + SCALER_RATIO_MAX - 1) /
       SCALER_RATIO_MAX;

 rect->width &= ~0x1;

 if (fmt->height > rect->height * SCALER_RATIO_MAX)
  rect->height = (fmt->height + SCALER_RATIO_MAX - 1) /
       SCALER_RATIO_MAX;

 if (rect->width < 16)
  rect->width = 16;

 if (rect->height < 4)
  rect->height = 4;
}
