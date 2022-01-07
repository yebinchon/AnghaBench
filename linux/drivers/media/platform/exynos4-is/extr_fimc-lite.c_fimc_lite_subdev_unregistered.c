
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_5__ {int entity; } ;
struct TYPE_4__ {int * pipe; TYPE_2__ vdev; } ;
struct fimc_lite {int lock; TYPE_1__ ve; } ;


 int media_entity_cleanup (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fimc_lite* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 scalar_t__ video_is_registered (TYPE_2__*) ;
 int video_unregister_device (TYPE_2__*) ;

__attribute__((used)) static void fimc_lite_subdev_unregistered(struct v4l2_subdev *sd)
{
 struct fimc_lite *fimc = v4l2_get_subdevdata(sd);

 if (fimc == ((void*)0))
  return;

 mutex_lock(&fimc->lock);

 if (video_is_registered(&fimc->ve.vdev)) {
  video_unregister_device(&fimc->ve.vdev);
  media_entity_cleanup(&fimc->ve.vdev.entity);
  fimc->ve.pipe = ((void*)0);
 }

 mutex_unlock(&fimc->lock);
}
