
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct media_device* mdev; } ;
struct media_entity {scalar_t__ use_count; TYPE_1__ graph_obj; } ;
struct media_device {int graph_mutex; int pm_count_walk; } ;


 int WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pipeline_pm_power (struct media_entity*,int,int *) ;

int v4l2_pipeline_pm_use(struct media_entity *entity, int use)
{
 struct media_device *mdev = entity->graph_obj.mdev;
 int change = use ? 1 : -1;
 int ret;

 mutex_lock(&mdev->graph_mutex);


 entity->use_count += change;
 WARN_ON(entity->use_count < 0);


 ret = pipeline_pm_power(entity, change, &mdev->pm_count_walk);
 if (ret < 0)
  entity->use_count -= change;

 mutex_unlock(&mdev->graph_mutex);

 return ret;
}
