
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct media_device* mdev; } ;
struct TYPE_4__ {TYPE_1__ graph_obj; } ;
struct video_device {int pipe; TYPE_2__ entity; } ;
struct media_device {int (* enable_source ) (TYPE_2__*,int *) ;int graph_mutex; } ;


 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_2__*,int *) ;

int v4l_enable_media_source(struct video_device *vdev)
{
 struct media_device *mdev = vdev->entity.graph_obj.mdev;
 int ret = 0, err;

 if (!mdev)
  return 0;

 mutex_lock(&mdev->graph_mutex);
 if (!mdev->enable_source)
  goto end;
 err = mdev->enable_source(&vdev->entity, &vdev->pipe);
 if (err)
  ret = -EBUSY;
end:
 mutex_unlock(&mdev->graph_mutex);
 return ret;
}
