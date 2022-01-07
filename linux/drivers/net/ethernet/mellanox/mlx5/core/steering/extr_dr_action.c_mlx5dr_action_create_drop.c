
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_action {int dummy; } ;


 int DR_ACTION_TYP_DROP ;
 struct mlx5dr_action* dr_action_create_generic (int ) ;

struct mlx5dr_action *mlx5dr_action_create_drop(void)
{
 return dr_action_create_generic(DR_ACTION_TYP_DROP);
}
