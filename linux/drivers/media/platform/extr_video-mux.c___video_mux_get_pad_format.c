
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct video_mux {struct v4l2_mbus_framefmt* format_mbus; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;




 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,unsigned int) ;
 struct video_mux* v4l2_subdev_to_video_mux (struct v4l2_subdev*) ;

__attribute__((used)) static struct v4l2_mbus_framefmt *
__video_mux_get_pad_format(struct v4l2_subdev *sd,
      struct v4l2_subdev_pad_config *cfg,
      unsigned int pad, u32 which)
{
 struct video_mux *vmux = v4l2_subdev_to_video_mux(sd);

 switch (which) {
 case 128:
  return v4l2_subdev_get_try_format(sd, cfg, pad);
 case 129:
  return &vmux->format_mbus[pad];
 default:
  return ((void*)0);
 }
}
