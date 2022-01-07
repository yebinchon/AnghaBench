
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int ctrl_handler; int entity; } ;
struct camif_dev {TYPE_1__* vp; } ;
struct TYPE_2__ {struct video_device vdev; } ;


 int media_entity_cleanup (int *) ;
 int v4l2_ctrl_handler_free (int ) ;
 scalar_t__ video_is_registered (struct video_device*) ;
 int video_unregister_device (struct video_device*) ;

void s3c_camif_unregister_video_node(struct camif_dev *camif, int idx)
{
 struct video_device *vfd = &camif->vp[idx].vdev;

 if (video_is_registered(vfd)) {
  video_unregister_device(vfd);
  media_entity_cleanup(&vfd->entity);
  v4l2_ctrl_handler_free(vfd->ctrl_handler);
 }
}
