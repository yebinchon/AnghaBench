
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_root_namespace {struct mlx5_core_dev* dev; } ;
struct mlx5_flow_group {unsigned int id; } ;
struct mlx5_core_dev {int dummy; } ;
struct fs_fte {int dummy; } ;


 int mlx5_cmd_set_fte (struct mlx5_core_dev*,int ,int ,struct mlx5_flow_table*,unsigned int,struct fs_fte*) ;

__attribute__((used)) static int mlx5_cmd_create_fte(struct mlx5_flow_root_namespace *ns,
          struct mlx5_flow_table *ft,
          struct mlx5_flow_group *group,
          struct fs_fte *fte)
{
 struct mlx5_core_dev *dev = ns->dev;
 unsigned int group_id = group->id;

 return mlx5_cmd_set_fte(dev, 0, 0, ft, group_id, fte);
}
