
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5dr_action {int flow_tag; } ;


 int DR_ACTION_TYP_TAG ;
 struct mlx5dr_action* dr_action_create_generic (int ) ;

struct mlx5dr_action *mlx5dr_action_create_tag(u32 tag_value)
{
 struct mlx5dr_action *action;

 action = dr_action_create_generic(DR_ACTION_TYP_TAG);
 if (!action)
  return ((void*)0);

 action->flow_tag = tag_value & 0xffffff;

 return action;
}
