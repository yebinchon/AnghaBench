
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsp1_pipeline {int dummy; } ;
struct vsp1_entity {TYPE_1__* ops; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;
struct TYPE_2__ {int (* configure_stream ) (struct vsp1_entity*,struct vsp1_pipeline*,struct vsp1_dl_list*,struct vsp1_dl_body*) ;} ;


 int stub1 (struct vsp1_entity*,struct vsp1_pipeline*,struct vsp1_dl_list*,struct vsp1_dl_body*) ;

void vsp1_entity_configure_stream(struct vsp1_entity *entity,
      struct vsp1_pipeline *pipe,
      struct vsp1_dl_list *dl,
      struct vsp1_dl_body *dlb)
{
 if (entity->ops->configure_stream)
  entity->ops->configure_stream(entity, pipe, dl, dlb);
}
