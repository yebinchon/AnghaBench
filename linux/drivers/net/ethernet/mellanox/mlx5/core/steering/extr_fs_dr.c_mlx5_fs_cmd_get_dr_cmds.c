
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_cmds {int dummy; } ;


 struct mlx5_flow_cmds const mlx5_flow_cmds_dr ;

const struct mlx5_flow_cmds *mlx5_fs_cmd_get_dr_cmds(void)
{
  return &mlx5_flow_cmds_dr;
}
