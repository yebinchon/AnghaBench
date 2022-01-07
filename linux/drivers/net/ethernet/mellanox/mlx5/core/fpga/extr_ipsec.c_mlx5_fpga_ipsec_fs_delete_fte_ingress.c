
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_root_namespace {int dummy; } ;
struct fs_fte {int dummy; } ;


 int fpga_ipsec_fs_delete_fte (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,struct fs_fte*,int) ;

__attribute__((used)) static int
mlx5_fpga_ipsec_fs_delete_fte_ingress(struct mlx5_flow_root_namespace *ns,
          struct mlx5_flow_table *ft,
          struct fs_fte *fte)
{
 return fpga_ipsec_fs_delete_fte(ns, ft, fte, 0);
}
