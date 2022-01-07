
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* mdev; } ;
struct media_link {TYPE_2__ graph_obj; } ;
struct TYPE_3__ {int graph_mutex; } ;


 int __media_entity_setup_link (struct media_link*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int media_entity_setup_link(struct media_link *link, u32 flags)
{
 int ret;

 mutex_lock(&link->graph_obj.mdev->graph_mutex);
 ret = __media_entity_setup_link(link, flags);
 mutex_unlock(&link->graph_obj.mdev->graph_mutex);

 return ret;
}
