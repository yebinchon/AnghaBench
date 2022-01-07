
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_action {int action_type; int refcount; } ;
typedef enum mlx5dr_action_type { ____Placeholder_mlx5dr_action_type } mlx5dr_action_type ;


 int GFP_KERNEL ;
 struct mlx5dr_action* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static struct mlx5dr_action *
dr_action_create_generic(enum mlx5dr_action_type action_type)
{
 struct mlx5dr_action *action;

 action = kzalloc(sizeof(*action), GFP_KERNEL);
 if (!action)
  return ((void*)0);

 action->action_type = action_type;
 refcount_set(&action->refcount, 1);

 return action;
}
