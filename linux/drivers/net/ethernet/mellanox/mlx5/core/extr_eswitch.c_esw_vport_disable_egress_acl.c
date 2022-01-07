
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * acl; int * drop_grp; int * allowed_vlans_grp; } ;
struct mlx5_vport {TYPE_1__ egress; int vport; } ;
struct mlx5_eswitch {int dev; } ;


 scalar_t__ IS_ERR_OR_NULL (int *) ;
 int esw_debug (int ,char*,int ) ;
 int esw_vport_cleanup_egress_rules (struct mlx5_eswitch*,struct mlx5_vport*) ;
 int mlx5_destroy_flow_group (int *) ;
 int mlx5_destroy_flow_table (int *) ;

void esw_vport_disable_egress_acl(struct mlx5_eswitch *esw,
      struct mlx5_vport *vport)
{
 if (IS_ERR_OR_NULL(vport->egress.acl))
  return;

 esw_debug(esw->dev, "Destroy vport[%d] E-Switch egress ACL\n", vport->vport);

 esw_vport_cleanup_egress_rules(esw, vport);
 mlx5_destroy_flow_group(vport->egress.allowed_vlans_grp);
 mlx5_destroy_flow_group(vport->egress.drop_grp);
 mlx5_destroy_flow_table(vport->egress.acl);
 vport->egress.allowed_vlans_grp = ((void*)0);
 vport->egress.drop_grp = ((void*)0);
 vport->egress.acl = ((void*)0);
}
