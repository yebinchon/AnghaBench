
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {int dummy; } ;
struct vfe_line {struct v4l2_rect compose; int subdev; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
typedef enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;


 int MSM_VFE_PAD_SINK ;
 int V4L2_SUBDEV_FORMAT_TRY ;
 struct v4l2_rect* v4l2_subdev_get_try_compose (int *,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static struct v4l2_rect *
__vfe_get_compose(struct vfe_line *line,
    struct v4l2_subdev_pad_config *cfg,
    enum v4l2_subdev_format_whence which)
{
 if (which == V4L2_SUBDEV_FORMAT_TRY)
  return v4l2_subdev_get_try_compose(&line->subdev, cfg,
         MSM_VFE_PAD_SINK);

 return &line->compose;
}
