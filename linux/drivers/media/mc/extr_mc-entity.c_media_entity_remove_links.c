
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct media_device* mdev; } ;
struct media_entity {TYPE_1__ graph_obj; } ;
struct media_device {int graph_mutex; } ;


 int __media_entity_remove_links (struct media_entity*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void media_entity_remove_links(struct media_entity *entity)
{
 struct media_device *mdev = entity->graph_obj.mdev;


 if (mdev == ((void*)0))
  return;

 mutex_lock(&mdev->graph_mutex);
 __media_entity_remove_links(entity);
 mutex_unlock(&mdev->graph_mutex);
}
