
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int entity; scalar_t__ ctrl_handler; } ;
struct vsp1_entity {TYPE_2__ subdev; int config; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* destroy ) (struct vsp1_entity*) ;} ;


 int media_entity_cleanup (int *) ;
 int stub1 (struct vsp1_entity*) ;
 int v4l2_ctrl_handler_free (scalar_t__) ;
 int v4l2_subdev_free_pad_config (int ) ;

void vsp1_entity_destroy(struct vsp1_entity *entity)
{
 if (entity->ops && entity->ops->destroy)
  entity->ops->destroy(entity);
 if (entity->subdev.ctrl_handler)
  v4l2_ctrl_handler_free(entity->subdev.ctrl_handler);
 v4l2_subdev_free_pad_config(entity->config);
 media_entity_cleanup(&entity->subdev.entity);
}
