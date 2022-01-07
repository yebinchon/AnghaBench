
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct mlx5_core_dev* mdev; struct mlx5_flow_table* ft; } ;
struct TYPE_4__ {int is_fw_tbl; TYPE_1__ fw_tbl; } ;
struct mlx5dr_action {TYPE_2__ dest_tbl; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int DR_ACTION_TYP_FT ;
 struct mlx5dr_action* dr_action_create_generic (int ) ;

struct mlx5dr_action *
mlx5dr_create_action_dest_flow_fw_table(struct mlx5_flow_table *ft,
     struct mlx5_core_dev *mdev)
{
 struct mlx5dr_action *action;

 action = dr_action_create_generic(DR_ACTION_TYP_FT);
 if (!action)
  return ((void*)0);

 action->dest_tbl.is_fw_tbl = 1;
 action->dest_tbl.fw_tbl.ft = ft;
 action->dest_tbl.fw_tbl.mdev = mdev;

 return action;
}
