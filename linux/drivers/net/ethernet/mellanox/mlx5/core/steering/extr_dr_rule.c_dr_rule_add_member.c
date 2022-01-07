
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_ste {int rule_list; } ;
struct mlx5dr_rule_rx_tx {int rule_members_list; } ;
struct mlx5dr_rule_member {int use_ste_list; int list; struct mlx5dr_ste* ste; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mlx5dr_rule_member* kvzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int dr_rule_add_member(struct mlx5dr_rule_rx_tx *nic_rule,
         struct mlx5dr_ste *ste)
{
 struct mlx5dr_rule_member *rule_mem;

 rule_mem = kvzalloc(sizeof(*rule_mem), GFP_KERNEL);
 if (!rule_mem)
  return -ENOMEM;

 rule_mem->ste = ste;
 list_add_tail(&rule_mem->list, &nic_rule->rule_members_list);

 list_add_tail(&rule_mem->use_ste_list, &ste->rule_list);

 return 0;
}
