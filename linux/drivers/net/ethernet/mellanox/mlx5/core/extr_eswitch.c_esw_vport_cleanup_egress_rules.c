
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * drop_rule; int * allowed_vlan; } ;
struct mlx5_vport {TYPE_1__ egress; } ;
struct mlx5_eswitch {int dummy; } ;


 int IS_ERR_OR_NULL (int *) ;
 int mlx5_del_flow_rules (int *) ;

void esw_vport_cleanup_egress_rules(struct mlx5_eswitch *esw,
        struct mlx5_vport *vport)
{
 if (!IS_ERR_OR_NULL(vport->egress.allowed_vlan))
  mlx5_del_flow_rules(vport->egress.allowed_vlan);

 if (!IS_ERR_OR_NULL(vport->egress.drop_rule))
  mlx5_del_flow_rules(vport->egress.drop_rule);

 vport->egress.allowed_vlan = ((void*)0);
 vport->egress.drop_rule = ((void*)0);
}
