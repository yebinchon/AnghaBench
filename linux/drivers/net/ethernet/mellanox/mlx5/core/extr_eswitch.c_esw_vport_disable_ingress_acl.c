
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * allow_untagged_spoofchk_grp; int * allow_untagged_only_grp; int * allow_spoofchk_only_grp; int * drop_grp; int * acl; } ;
struct mlx5_vport {TYPE_1__ ingress; int vport; } ;
struct mlx5_eswitch {int dev; } ;


 scalar_t__ IS_ERR_OR_NULL (int *) ;
 int esw_debug (int ,char*,int ) ;
 int esw_vport_cleanup_ingress_rules (struct mlx5_eswitch*,struct mlx5_vport*) ;
 int mlx5_destroy_flow_group (int *) ;
 int mlx5_destroy_flow_table (int *) ;

void esw_vport_disable_ingress_acl(struct mlx5_eswitch *esw,
       struct mlx5_vport *vport)
{
 if (IS_ERR_OR_NULL(vport->ingress.acl))
  return;

 esw_debug(esw->dev, "Destroy vport[%d] E-Switch ingress ACL\n", vport->vport);

 esw_vport_cleanup_ingress_rules(esw, vport);
 mlx5_destroy_flow_group(vport->ingress.allow_spoofchk_only_grp);
 mlx5_destroy_flow_group(vport->ingress.allow_untagged_only_grp);
 mlx5_destroy_flow_group(vport->ingress.allow_untagged_spoofchk_grp);
 mlx5_destroy_flow_group(vport->ingress.drop_grp);
 mlx5_destroy_flow_table(vport->ingress.acl);
 vport->ingress.acl = ((void*)0);
 vport->ingress.drop_grp = ((void*)0);
 vport->ingress.allow_spoofchk_only_grp = ((void*)0);
 vport->ingress.allow_untagged_only_grp = ((void*)0);
 vport->ingress.allow_untagged_spoofchk_grp = ((void*)0);
}
