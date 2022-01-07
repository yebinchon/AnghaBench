
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entity; } ;
struct uvc_entity {TYPE_2__* vdev; TYPE_1__ subdev; } ;
struct TYPE_4__ {int entity; } ;


 scalar_t__ UVC_ENTITY_TYPE (struct uvc_entity*) ;
 scalar_t__ UVC_TT_STREAMING ;
 int media_entity_cleanup (int *) ;

void uvc_mc_cleanup_entity(struct uvc_entity *entity)
{
 if (UVC_ENTITY_TYPE(entity) != UVC_TT_STREAMING)
  media_entity_cleanup(&entity->subdev.entity);
 else if (entity->vdev != ((void*)0))
  media_entity_cleanup(&entity->vdev->entity);
}
