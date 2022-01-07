
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_mux {int lock; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int which; int pad; int format; } ;
struct v4l2_subdev {int dummy; } ;


 int * __video_mux_get_pad_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct video_mux* v4l2_subdev_to_video_mux (struct v4l2_subdev*) ;

__attribute__((used)) static int video_mux_get_format(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_format *sdformat)
{
 struct video_mux *vmux = v4l2_subdev_to_video_mux(sd);

 mutex_lock(&vmux->lock);

 sdformat->format = *__video_mux_get_pad_format(sd, cfg, sdformat->pad,
             sdformat->which);

 mutex_unlock(&vmux->lock);

 return 0;
}
