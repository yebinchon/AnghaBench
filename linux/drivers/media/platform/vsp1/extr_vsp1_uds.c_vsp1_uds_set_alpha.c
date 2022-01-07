
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_uds {int dummy; } ;
struct vsp1_entity {int subdev; } ;
struct vsp1_dl_body {int dummy; } ;


 int VI6_UDS_ALPVAL ;
 unsigned int VI6_UDS_ALPVAL_VAL0_SHIFT ;
 struct vsp1_uds* to_uds (int *) ;
 int vsp1_uds_write (struct vsp1_uds*,struct vsp1_dl_body*,int ,unsigned int) ;

void vsp1_uds_set_alpha(struct vsp1_entity *entity, struct vsp1_dl_body *dlb,
   unsigned int alpha)
{
 struct vsp1_uds *uds = to_uds(&entity->subdev);

 vsp1_uds_write(uds, dlb, VI6_UDS_ALPVAL,
         alpha << VI6_UDS_ALPVAL_VAL0_SHIFT);
}
