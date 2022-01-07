
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u16 ;
struct media_pad {unsigned int index; int graph_obj; struct media_entity* entity; } ;
struct TYPE_2__ {struct media_device* mdev; } ;
struct media_entity {unsigned int num_pads; struct media_pad* pads; TYPE_1__ graph_obj; } ;
struct media_device {int graph_mutex; } ;


 int E2BIG ;
 unsigned int MEDIA_ENTITY_MAX_PADS ;
 int MEDIA_GRAPH_PAD ;
 int media_gobj_create (struct media_device*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int media_entity_pads_init(struct media_entity *entity, u16 num_pads,
      struct media_pad *pads)
{
 struct media_device *mdev = entity->graph_obj.mdev;
 unsigned int i;

 if (num_pads >= MEDIA_ENTITY_MAX_PADS)
  return -E2BIG;

 entity->num_pads = num_pads;
 entity->pads = pads;

 if (mdev)
  mutex_lock(&mdev->graph_mutex);

 for (i = 0; i < num_pads; i++) {
  pads[i].entity = entity;
  pads[i].index = i;
  if (mdev)
   media_gobj_create(mdev, MEDIA_GRAPH_PAD,
     &entity->pads[i].graph_obj);
 }

 if (mdev)
  mutex_unlock(&mdev->graph_mutex);

 return 0;
}
