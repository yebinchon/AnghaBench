
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct media_device* mdev; } ;
struct media_entity {TYPE_1__ graph_obj; } ;
struct media_device {int graph_mutex; } ;


 int __media_pipeline_stop (struct media_entity*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void media_pipeline_stop(struct media_entity *entity)
{
 struct media_device *mdev = entity->graph_obj.mdev;

 mutex_lock(&mdev->graph_mutex);
 __media_pipeline_stop(entity);
 mutex_unlock(&mdev->graph_mutex);
}
