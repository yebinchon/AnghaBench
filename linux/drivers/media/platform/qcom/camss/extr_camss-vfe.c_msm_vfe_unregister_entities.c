
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfe_device {TYPE_1__* line; int stream_lock; int power_lock; } ;
struct v4l2_subdev {int entity; } ;
struct camss_video {int dummy; } ;
struct TYPE_2__ {struct camss_video video_out; struct v4l2_subdev subdev; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int media_entity_cleanup (int *) ;
 int msm_video_unregister (struct camss_video*) ;
 int mutex_destroy (int *) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

void msm_vfe_unregister_entities(struct vfe_device *vfe)
{
 int i;

 mutex_destroy(&vfe->power_lock);
 mutex_destroy(&vfe->stream_lock);

 for (i = 0; i < ARRAY_SIZE(vfe->line); i++) {
  struct v4l2_subdev *sd = &vfe->line[i].subdev;
  struct camss_video *video_out = &vfe->line[i].video_out;

  msm_video_unregister(video_out);
  v4l2_device_unregister_subdev(sd);
  media_entity_cleanup(&sd->entity);
 }
}
