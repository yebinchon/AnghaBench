
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_mux {int active; } ;
struct TYPE_2__ {int * pads; } ;
struct v4l2_subdev {int dev; TYPE_1__ entity; } ;
struct media_pad {int entity; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOLINK ;
 int dev_err (int ,char*) ;
 int is_media_entity_v4l2_subdev (int ) ;
 struct media_pad* media_entity_remote_pad (int *) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (int ) ;
 int s_stream ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int) ;
 struct video_mux* v4l2_subdev_to_video_mux (struct v4l2_subdev*) ;
 int video ;

__attribute__((used)) static int video_mux_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct video_mux *vmux = v4l2_subdev_to_video_mux(sd);
 struct v4l2_subdev *upstream_sd;
 struct media_pad *pad;

 if (vmux->active == -1) {
  dev_err(sd->dev, "Can not start streaming on inactive mux\n");
  return -EINVAL;
 }

 pad = media_entity_remote_pad(&sd->entity.pads[vmux->active]);
 if (!pad) {
  dev_err(sd->dev, "Failed to find remote source pad\n");
  return -ENOLINK;
 }

 if (!is_media_entity_v4l2_subdev(pad->entity)) {
  dev_err(sd->dev, "Upstream entity is not a v4l2 subdev\n");
  return -ENODEV;
 }

 upstream_sd = media_entity_to_v4l2_subdev(pad->entity);

 return v4l2_subdev_call(upstream_sd, video, s_stream, enable);
}
