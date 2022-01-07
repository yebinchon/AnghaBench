
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_root_namespace {struct mlx5_core_dev* dev; } ;
struct mlx5_flow_group {int id; } ;
struct mlx5_core_dev {int dummy; } ;
struct fs_fte {int dummy; } ;
struct TYPE_2__ {int flow_modify_en; } ;


 int EOPNOTSUPP ;
 int MLX5_CAP_FLOWTABLE (struct mlx5_core_dev*,int ) ;
 TYPE_1__ flow_table_properties_nic_receive ;
 int mlx5_cmd_set_fte (struct mlx5_core_dev*,int,int,struct mlx5_flow_table*,int ,struct fs_fte*) ;

__attribute__((used)) static int mlx5_cmd_update_fte(struct mlx5_flow_root_namespace *ns,
          struct mlx5_flow_table *ft,
          struct mlx5_flow_group *fg,
          int modify_mask,
          struct fs_fte *fte)
{
 int opmod;
 struct mlx5_core_dev *dev = ns->dev;
 int atomic_mod_cap = MLX5_CAP_FLOWTABLE(dev,
      flow_table_properties_nic_receive.
      flow_modify_en);
 if (!atomic_mod_cap)
  return -EOPNOTSUPP;
 opmod = 1;

 return mlx5_cmd_set_fte(dev, opmod, modify_mask, ft, fg->id, fte);
}
