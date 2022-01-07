
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct media_device* mdev; } ;
struct TYPE_4__ {TYPE_1__ graph_obj; } ;
struct video_device {TYPE_2__ entity; } ;
struct media_device {int graph_mutex; int (* disable_source ) (TYPE_2__*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_2__*) ;

void v4l_disable_media_source(struct video_device *vdev)
{
 struct media_device *mdev = vdev->entity.graph_obj.mdev;

 if (mdev) {
  mutex_lock(&mdev->graph_mutex);
  if (mdev->disable_source)
   mdev->disable_source(&vdev->entity);
  mutex_unlock(&mdev->graph_mutex);
 }
}
