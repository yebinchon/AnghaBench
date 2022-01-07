
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * allow_rule; int * drop_rule; } ;
struct mlx5_vport {TYPE_1__ ingress; } ;
struct mlx5_eswitch {int dummy; } ;


 int IS_ERR_OR_NULL (int *) ;
 int esw_vport_del_ingress_acl_modify_metadata (struct mlx5_eswitch*,struct mlx5_vport*) ;
 int mlx5_del_flow_rules (int *) ;

void esw_vport_cleanup_ingress_rules(struct mlx5_eswitch *esw,
         struct mlx5_vport *vport)
{
 if (!IS_ERR_OR_NULL(vport->ingress.drop_rule))
  mlx5_del_flow_rules(vport->ingress.drop_rule);

 if (!IS_ERR_OR_NULL(vport->ingress.allow_rule))
  mlx5_del_flow_rules(vport->ingress.allow_rule);

 vport->ingress.drop_rule = ((void*)0);
 vport->ingress.allow_rule = ((void*)0);

 esw_vport_del_ingress_acl_modify_metadata(esw, vport);
}
