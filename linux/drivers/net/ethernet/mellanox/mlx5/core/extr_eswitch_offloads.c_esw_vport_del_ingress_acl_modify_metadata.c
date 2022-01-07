
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * modify_metadata_rule; int modify_metadata; } ;
struct mlx5_vport {TYPE_1__ ingress; } ;
struct mlx5_eswitch {int dev; } ;


 int mlx5_del_flow_rules (int *) ;
 int mlx5_modify_header_dealloc (int ,int ) ;

void esw_vport_del_ingress_acl_modify_metadata(struct mlx5_eswitch *esw,
            struct mlx5_vport *vport)
{
 if (vport->ingress.modify_metadata_rule) {
  mlx5_del_flow_rules(vport->ingress.modify_metadata_rule);
  mlx5_modify_header_dealloc(esw->dev, vport->ingress.modify_metadata);

  vport->ingress.modify_metadata_rule = ((void*)0);
 }
}
