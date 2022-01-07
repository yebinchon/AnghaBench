
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_root_namespace {int dummy; } ;



__attribute__((used)) static int mlx5_cmd_stub_update_root_ft(struct mlx5_flow_root_namespace *ns,
     struct mlx5_flow_table *ft,
     u32 underlay_qpn,
     bool disconnect)
{
 return 0;
}
