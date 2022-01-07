
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_cmds {int dummy; } ;
typedef enum fs_flow_table_type { ____Placeholder_fs_flow_table_type } fs_flow_table_type ;
 struct mlx5_flow_cmds const* mlx5_fs_cmd_get_fw_cmds () ;
 struct mlx5_flow_cmds const* mlx5_fs_cmd_get_stub_cmds () ;

const struct mlx5_flow_cmds *mlx5_fs_cmd_get_default(enum fs_flow_table_type type)
{
 switch (type) {
 case 132:
 case 135:
 case 134:
 case 133:
 case 129:
 case 128:
 case 131:
 case 130:
  return mlx5_fs_cmd_get_fw_cmds();
 default:
  return mlx5_fs_cmd_get_stub_cmds();
 }
}
