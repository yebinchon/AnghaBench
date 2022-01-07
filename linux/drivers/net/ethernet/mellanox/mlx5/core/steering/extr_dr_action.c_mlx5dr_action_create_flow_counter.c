
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ctr_id; } ;
struct mlx5dr_action {TYPE_1__ ctr; } ;


 int DR_ACTION_TYP_CTR ;
 struct mlx5dr_action* dr_action_create_generic (int ) ;

struct mlx5dr_action *
mlx5dr_action_create_flow_counter(u32 counter_id)
{
 struct mlx5dr_action *action;

 action = dr_action_create_generic(DR_ACTION_TYP_CTR);
 if (!action)
  return ((void*)0);

 action->ctr.ctr_id = counter_id;

 return action;
}
