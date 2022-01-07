
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_rule_action_member {struct mlx5dr_action* action; int list; } ;
struct mlx5dr_rule {int rule_actions_list; } ;
struct mlx5dr_action {int refcount; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dr_rule_remove_action_members (struct mlx5dr_rule*) ;
 struct mlx5dr_rule_action_member* kvzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int refcount_inc (int *) ;

__attribute__((used)) static int dr_rule_add_action_members(struct mlx5dr_rule *rule,
          size_t num_actions,
          struct mlx5dr_action *actions[])
{
 struct mlx5dr_rule_action_member *action_mem;
 int i;

 for (i = 0; i < num_actions; i++) {
  action_mem = kvzalloc(sizeof(*action_mem), GFP_KERNEL);
  if (!action_mem)
   goto free_action_members;

  action_mem->action = actions[i];
  INIT_LIST_HEAD(&action_mem->list);
  list_add_tail(&action_mem->list, &rule->rule_actions_list);
  refcount_inc(&action_mem->action->refcount);
 }

 return 0;

free_action_members:
 dr_rule_remove_action_members(rule);
 return -ENOMEM;
}
