
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_root_namespace {int dummy; } ;
struct mlx5_flow_group {int dummy; } ;


 int fpga_ipsec_fs_create_flow_group (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,int *,struct mlx5_flow_group*,int) ;

__attribute__((used)) static int
mlx5_fpga_ipsec_fs_create_flow_group_ingress(struct mlx5_flow_root_namespace *ns,
          struct mlx5_flow_table *ft,
          u32 *in,
          struct mlx5_flow_group *fg)
{
 return fpga_ipsec_fs_create_flow_group(ns, ft, in, fg, 0);
}
