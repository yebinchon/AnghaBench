
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_async_notifier {int dummy; } ;
struct TYPE_2__ {int graph_mutex; } ;
struct fimc_md {TYPE_1__ media_dev; int v4l2_dev; } ;


 int fimc_md_create_links (struct fimc_md*) ;
 int media_device_register (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fimc_md* notifier_to_fimc_md (struct v4l2_async_notifier*) ;
 int v4l2_device_register_subdev_nodes (int *) ;

__attribute__((used)) static int subdev_notifier_complete(struct v4l2_async_notifier *notifier)
{
 struct fimc_md *fmd = notifier_to_fimc_md(notifier);
 int ret;

 mutex_lock(&fmd->media_dev.graph_mutex);

 ret = fimc_md_create_links(fmd);
 if (ret < 0)
  goto unlock;

 ret = v4l2_device_register_subdev_nodes(&fmd->v4l2_dev);
unlock:
 mutex_unlock(&fmd->media_dev.graph_mutex);
 if (ret < 0)
  return ret;

 return media_device_register(&fmd->media_dev);
}
