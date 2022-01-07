
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_domain {int refcount; } ;
struct TYPE_2__ {struct mlx5dr_domain* dmn; } ;
struct mlx5dr_action {TYPE_1__ reformat; } ;
typedef enum mlx5dr_action_type { ____Placeholder_mlx5dr_action_type } mlx5dr_action_type ;
typedef enum mlx5dr_action_reformat_type { ____Placeholder_mlx5dr_action_reformat_type } mlx5dr_action_reformat_type ;


 struct mlx5dr_action* dr_action_create_generic (int) ;
 int dr_action_create_reformat_action (struct mlx5dr_domain*,size_t,void*,struct mlx5dr_action*) ;
 int dr_action_reformat_to_action_type (int,int*) ;
 int dr_action_verify_reformat_params (int,struct mlx5dr_domain*,size_t,void*) ;
 int kfree (struct mlx5dr_action*) ;
 int mlx5dr_dbg (struct mlx5dr_domain*,char*,...) ;
 int refcount_dec (int *) ;
 int refcount_inc (int *) ;

struct mlx5dr_action *
mlx5dr_action_create_packet_reformat(struct mlx5dr_domain *dmn,
         enum mlx5dr_action_reformat_type reformat_type,
         size_t data_sz,
         void *data)
{
 enum mlx5dr_action_type action_type;
 struct mlx5dr_action *action;
 int ret;

 refcount_inc(&dmn->refcount);


 ret = dr_action_reformat_to_action_type(reformat_type, &action_type);
 if (ret) {
  mlx5dr_dbg(dmn, "Invalid reformat_type provided\n");
  goto dec_ref;
 }

 ret = dr_action_verify_reformat_params(action_type, dmn, data_sz, data);
 if (ret)
  goto dec_ref;

 action = dr_action_create_generic(action_type);
 if (!action)
  goto dec_ref;

 action->reformat.dmn = dmn;

 ret = dr_action_create_reformat_action(dmn,
            data_sz,
            data,
            action);
 if (ret) {
  mlx5dr_dbg(dmn, "Failed creating reformat action %d\n", ret);
  goto free_action;
 }

 return action;

free_action:
 kfree(action);
dec_ref:
 refcount_dec(&dmn->refcount);
 return ((void*)0);
}
