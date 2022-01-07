
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_mux {int lock; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {unsigned int num_pads; } ;
struct v4l2_subdev {TYPE_1__ entity; } ;
struct v4l2_mbus_framefmt {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,unsigned int) ;
 struct video_mux* v4l2_subdev_to_video_mux (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt video_mux_format_mbus_default ;

__attribute__((used)) static int video_mux_init_cfg(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg)
{
 struct video_mux *vmux = v4l2_subdev_to_video_mux(sd);
 struct v4l2_mbus_framefmt *mbusformat;
 unsigned int i;

 mutex_lock(&vmux->lock);

 for (i = 0; i < sd->entity.num_pads; i++) {
  mbusformat = v4l2_subdev_get_try_format(sd, cfg, i);
  *mbusformat = video_mux_format_mbus_default;
 }

 mutex_unlock(&vmux->lock);

 return 0;
}
