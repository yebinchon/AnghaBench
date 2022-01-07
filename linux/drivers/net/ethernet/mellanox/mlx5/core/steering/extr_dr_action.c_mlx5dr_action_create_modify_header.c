
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5dr_domain {int refcount; } ;
struct TYPE_2__ {struct mlx5dr_domain* dmn; } ;
struct mlx5dr_action {TYPE_1__ rewrite; } ;
typedef int __be64 ;


 int DR_ACTION_TYP_MODIFY_HDR ;
 size_t DR_MODIFY_ACTION_SIZE ;
 struct mlx5dr_action* dr_action_create_generic (int ) ;
 int dr_action_create_modify_action (struct mlx5dr_domain*,size_t,int *,struct mlx5dr_action*) ;
 int kfree (struct mlx5dr_action*) ;
 int mlx5dr_dbg (struct mlx5dr_domain*,char*,...) ;
 int refcount_dec (int *) ;
 int refcount_inc (int *) ;

struct mlx5dr_action *
mlx5dr_action_create_modify_header(struct mlx5dr_domain *dmn,
       u32 flags,
       size_t actions_sz,
       __be64 actions[])
{
 struct mlx5dr_action *action;
 int ret = 0;

 refcount_inc(&dmn->refcount);

 if (actions_sz % DR_MODIFY_ACTION_SIZE) {
  mlx5dr_dbg(dmn, "Invalid modify actions size provided\n");
  goto dec_ref;
 }

 action = dr_action_create_generic(DR_ACTION_TYP_MODIFY_HDR);
 if (!action)
  goto dec_ref;

 action->rewrite.dmn = dmn;

 ret = dr_action_create_modify_action(dmn,
          actions_sz,
          actions,
          action);
 if (ret) {
  mlx5dr_dbg(dmn, "Failed creating modify header action %d\n", ret);
  goto free_action;
 }

 return action;

free_action:
 kfree(action);
dec_ref:
 refcount_dec(&dmn->refcount);
 return ((void*)0);
}
