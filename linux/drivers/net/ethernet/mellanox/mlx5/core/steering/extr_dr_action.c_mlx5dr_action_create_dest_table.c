
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_table {int refcount; } ;
struct TYPE_2__ {struct mlx5dr_table* tbl; } ;
struct mlx5dr_action {TYPE_1__ dest_tbl; } ;


 int DR_ACTION_TYP_FT ;
 struct mlx5dr_action* dr_action_create_generic (int ) ;
 int refcount_dec (int *) ;
 int refcount_inc (int *) ;

struct mlx5dr_action *
mlx5dr_action_create_dest_table(struct mlx5dr_table *tbl)
{
 struct mlx5dr_action *action;

 refcount_inc(&tbl->refcount);

 action = dr_action_create_generic(DR_ACTION_TYP_FT);
 if (!action)
  goto dec_ref;

 action->dest_tbl.tbl = tbl;

 return action;

dec_ref:
 refcount_dec(&tbl->refcount);
 return ((void*)0);
}
