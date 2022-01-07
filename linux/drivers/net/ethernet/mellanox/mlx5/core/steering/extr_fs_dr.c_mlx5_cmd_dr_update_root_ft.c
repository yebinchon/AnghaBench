
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_root_namespace {int dummy; } ;
struct TYPE_2__ {int (* update_root_ft ) (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,int ,int) ;} ;


 TYPE_1__* mlx5_fs_cmd_get_fw_cmds () ;
 int stub1 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*,int ,int) ;

__attribute__((used)) static int mlx5_cmd_dr_update_root_ft(struct mlx5_flow_root_namespace *ns,
          struct mlx5_flow_table *ft,
          u32 underlay_qpn,
          bool disconnect)
{
 return mlx5_fs_cmd_get_fw_cmds()->update_root_ft(ns, ft, underlay_qpn,
        disconnect);
}
