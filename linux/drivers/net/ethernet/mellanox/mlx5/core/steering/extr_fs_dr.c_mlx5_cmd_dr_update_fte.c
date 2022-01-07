
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_root_namespace {int dummy; } ;
struct mlx5_flow_group {int dummy; } ;
struct fs_fte {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int mlx5_cmd_dr_update_fte(struct mlx5_flow_root_namespace *ns,
      struct mlx5_flow_table *ft,
      struct mlx5_flow_group *group,
      int modify_mask,
      struct fs_fte *fte)
{
 return -EOPNOTSUPP;
}
