
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_root_namespace {int dummy; } ;
struct mlx5_flow_group {int dummy; } ;
struct fs_fte {int dummy; } ;


 int fpga_ipsec_fs_create_fte (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct mlx5_flow_group*,struct fs_fte*,int) ;

__attribute__((used)) static int
mlx5_fpga_ipsec_fs_create_fte_ingress(struct mlx5_flow_root_namespace *ns,
          struct mlx5_flow_table *ft,
          struct mlx5_flow_group *fg,
          struct fs_fte *fte)
{
 return fpga_ipsec_fs_create_fte(ns, ft, fg, fte, 0);
}
