
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5_flow_steering {TYPE_1__** esw_ingress_root_ns; TYPE_3__** esw_egress_root_ns; } ;
struct mlx5_flow_namespace {int dummy; } ;
struct TYPE_5__ {struct mlx5_flow_steering* steering; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
typedef enum mlx5_flow_namespace_type { ____Placeholder_mlx5_flow_namespace_type } mlx5_flow_namespace_type ;
struct TYPE_6__ {struct mlx5_flow_namespace ns; } ;
struct TYPE_4__ {struct mlx5_flow_namespace ns; } ;




 int mlx5_eswitch_get_total_vports (struct mlx5_core_dev*) ;

struct mlx5_flow_namespace *mlx5_get_flow_vport_acl_namespace(struct mlx5_core_dev *dev,
             enum mlx5_flow_namespace_type type,
             int vport)
{
 struct mlx5_flow_steering *steering = dev->priv.steering;

 if (!steering || vport >= mlx5_eswitch_get_total_vports(dev))
  return ((void*)0);

 switch (type) {
 case 129:
  if (steering->esw_egress_root_ns &&
      steering->esw_egress_root_ns[vport])
   return &steering->esw_egress_root_ns[vport]->ns;
  else
   return ((void*)0);
 case 128:
  if (steering->esw_ingress_root_ns &&
      steering->esw_ingress_root_ns[vport])
   return &steering->esw_ingress_root_ns[vport]->ns;
  else
   return ((void*)0);
 default:
  return ((void*)0);
 }
}
