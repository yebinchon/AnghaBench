
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int entity; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int * pipe; struct video_device vdev; } ;
struct TYPE_4__ {int * ctx; TYPE_1__ ve; } ;
struct fimc_dev {int lock; TYPE_2__ vid_cap; } ;


 int fimc_ctrls_delete (int *) ;
 int fimc_unregister_m2m_device (struct fimc_dev*) ;
 int kfree (int *) ;
 int media_entity_cleanup (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fimc_dev* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 scalar_t__ video_is_registered (struct video_device*) ;
 int video_unregister_device (struct video_device*) ;

__attribute__((used)) static void fimc_capture_subdev_unregistered(struct v4l2_subdev *sd)
{
 struct fimc_dev *fimc = v4l2_get_subdevdata(sd);
 struct video_device *vdev;

 if (fimc == ((void*)0))
  return;

 mutex_lock(&fimc->lock);

 fimc_unregister_m2m_device(fimc);
 vdev = &fimc->vid_cap.ve.vdev;

 if (video_is_registered(vdev)) {
  video_unregister_device(vdev);
  media_entity_cleanup(&vdev->entity);
  fimc_ctrls_delete(fimc->vid_cap.ctx);
  fimc->vid_cap.ve.pipe = ((void*)0);
 }
 kfree(fimc->vid_cap.ctx);
 fimc->vid_cap.ctx = ((void*)0);

 mutex_unlock(&fimc->lock);
}
