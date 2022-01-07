
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsp1_pipeline {int uds; TYPE_1__* uds_input; } ;
struct vsp1_dl_body {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ VSP1_ENTITY_BRS ;
 scalar_t__ VSP1_ENTITY_BRU ;
 int vsp1_uds_set_alpha (int ,struct vsp1_dl_body*,unsigned int) ;

void vsp1_pipeline_propagate_alpha(struct vsp1_pipeline *pipe,
       struct vsp1_dl_body *dlb, unsigned int alpha)
{
 if (!pipe->uds)
  return;





 if (pipe->uds_input->type == VSP1_ENTITY_BRU ||
     pipe->uds_input->type == VSP1_ENTITY_BRS)
  alpha = 255;

 vsp1_uds_set_alpha(pipe->uds, dlb, alpha);
}
