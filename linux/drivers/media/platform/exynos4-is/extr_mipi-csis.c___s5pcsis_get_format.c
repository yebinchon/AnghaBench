
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct csis_state {struct v4l2_mbus_framefmt format; int sd; } ;
typedef enum v4l2_subdev_format_whence { ____Placeholder_v4l2_subdev_format_whence } v4l2_subdev_format_whence ;


 int V4L2_SUBDEV_FORMAT_TRY ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (int *,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static struct v4l2_mbus_framefmt *__s5pcsis_get_format(
  struct csis_state *state, struct v4l2_subdev_pad_config *cfg,
  enum v4l2_subdev_format_whence which)
{
 if (which == V4L2_SUBDEV_FORMAT_TRY)
  return cfg ? v4l2_subdev_get_try_format(&state->sd, cfg, 0) : ((void*)0);

 return &state->format;
}
