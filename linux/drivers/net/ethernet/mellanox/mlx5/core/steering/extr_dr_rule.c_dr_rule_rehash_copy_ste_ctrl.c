
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_ste {int rule_list; int refcount; TYPE_1__* next_htbl; int ste_chain_location; } ;
struct mlx5dr_matcher_rx_tx {int dummy; } ;
struct mlx5dr_matcher {int dummy; } ;
struct TYPE_2__ {struct mlx5dr_ste* pointing_ste; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_splice_tail_init (int *,int *) ;
 int mlx5dr_rule_update_rule_member (struct mlx5dr_ste*,struct mlx5dr_ste*) ;
 int mlx5dr_ste_is_last_in_rule (struct mlx5dr_matcher_rx_tx*,int ) ;
 int refcount_read (int *) ;
 int refcount_set (int *,int ) ;

__attribute__((used)) static void dr_rule_rehash_copy_ste_ctrl(struct mlx5dr_matcher *matcher,
      struct mlx5dr_matcher_rx_tx *nic_matcher,
      struct mlx5dr_ste *cur_ste,
      struct mlx5dr_ste *new_ste)
{
 new_ste->next_htbl = cur_ste->next_htbl;
 new_ste->ste_chain_location = cur_ste->ste_chain_location;

 if (!mlx5dr_ste_is_last_in_rule(nic_matcher, new_ste->ste_chain_location))
  new_ste->next_htbl->pointing_ste = new_ste;




 refcount_set(&new_ste->refcount, refcount_read(&cur_ste->refcount));


 mlx5dr_rule_update_rule_member(cur_ste, new_ste);
 INIT_LIST_HEAD(&new_ste->rule_list);
 list_splice_tail_init(&cur_ste->rule_list, &new_ste->rule_list);
}
