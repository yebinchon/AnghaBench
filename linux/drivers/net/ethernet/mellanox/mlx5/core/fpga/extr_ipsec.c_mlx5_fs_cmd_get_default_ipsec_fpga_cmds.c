
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_cmds {int dummy; } ;
typedef enum fs_flow_table_type { ____Placeholder_fs_flow_table_type } fs_flow_table_type ;




 int WARN_ON (int) ;
 struct mlx5_flow_cmds const fpga_ipsec_egress ;
 struct mlx5_flow_cmds const fpga_ipsec_ingress ;

const struct mlx5_flow_cmds *mlx5_fs_cmd_get_default_ipsec_fpga_cmds(enum fs_flow_table_type type)
{
 switch (type) {
 case 129:
  return &fpga_ipsec_ingress;
 case 128:
  return &fpga_ipsec_egress;
 default:
  WARN_ON(1);
  return ((void*)0);
 }
}
