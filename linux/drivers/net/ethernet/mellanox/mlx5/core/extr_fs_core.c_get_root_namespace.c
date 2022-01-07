
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_root_namespace {int dummy; } ;
struct mlx5_flow_namespace {int node; } ;
struct mlx5_core_dev {int dummy; } ;
typedef enum mlx5_flow_namespace_type { ____Placeholder_mlx5_flow_namespace_type } mlx5_flow_namespace_type ;


 int MLX5_FLOW_NAMESPACE_ESW_EGRESS ;
 int MLX5_FLOW_NAMESPACE_ESW_INGRESS ;
 struct mlx5_flow_root_namespace* find_root (int *) ;
 struct mlx5_flow_namespace* mlx5_get_flow_namespace (struct mlx5_core_dev*,int) ;
 struct mlx5_flow_namespace* mlx5_get_flow_vport_acl_namespace (struct mlx5_core_dev*,int,int ) ;

__attribute__((used)) static struct mlx5_flow_root_namespace
*get_root_namespace(struct mlx5_core_dev *dev, enum mlx5_flow_namespace_type ns_type)
{
 struct mlx5_flow_namespace *ns;

 if (ns_type == MLX5_FLOW_NAMESPACE_ESW_EGRESS ||
     ns_type == MLX5_FLOW_NAMESPACE_ESW_INGRESS)
  ns = mlx5_get_flow_vport_acl_namespace(dev, ns_type, 0);
 else
  ns = mlx5_get_flow_namespace(dev, ns_type);
 if (!ns)
  return ((void*)0);

 return find_root(&ns->node);
}
