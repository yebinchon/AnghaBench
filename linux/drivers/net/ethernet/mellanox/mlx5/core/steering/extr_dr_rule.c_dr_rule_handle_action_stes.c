
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mlx5dr_ste_send_info {int dummy; } ;
struct mlx5dr_ste {int htbl; int miss_list_node; } ;
struct mlx5dr_rule_rx_tx {struct mlx5dr_matcher_rx_tx* nic_matcher; } ;
struct mlx5dr_rule {struct mlx5dr_matcher* matcher; } ;
struct mlx5dr_matcher_rx_tx {int num_of_builders; } ;
struct mlx5dr_matcher {TYPE_1__* tbl; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int dmn; } ;


 int DR_ACTION_MAX_STES ;
 int DR_STE_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dr_rule_add_member (struct mlx5dr_rule_rx_tx*,struct mlx5dr_ste*) ;
 struct mlx5dr_ste* dr_rule_create_collision_htbl (struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*,int*) ;
 int kfree (struct mlx5dr_ste_send_info*) ;
 struct mlx5dr_ste_send_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int ) ;
 int mlx5dr_dbg (int ,char*) ;
 int mlx5dr_send_fill_and_append_ste_send_info (struct mlx5dr_ste*,int,int ,int*,struct mlx5dr_ste_send_info*,struct list_head*,int) ;
 int mlx5dr_ste_get (struct mlx5dr_ste*) ;
 int mlx5dr_ste_get_miss_list (struct mlx5dr_ste*) ;
 int mlx5dr_ste_put (struct mlx5dr_ste*,struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*) ;
 int mlx5dr_ste_set_hit_addr_by_next_htbl (int*,int ) ;

__attribute__((used)) static int dr_rule_handle_action_stes(struct mlx5dr_rule *rule,
          struct mlx5dr_rule_rx_tx *nic_rule,
          struct list_head *send_ste_list,
          struct mlx5dr_ste *last_ste,
          u8 *hw_ste_arr,
          u32 new_hw_ste_arr_sz)
{
 struct mlx5dr_matcher_rx_tx *nic_matcher = nic_rule->nic_matcher;
 struct mlx5dr_ste_send_info *ste_info_arr[DR_ACTION_MAX_STES];
 u8 num_of_builders = nic_matcher->num_of_builders;
 struct mlx5dr_matcher *matcher = rule->matcher;
 u8 *curr_hw_ste, *prev_hw_ste;
 struct mlx5dr_ste *action_ste;
 int i, k, ret;






 if (num_of_builders == new_hw_ste_arr_sz)
  return 0;

 for (i = num_of_builders, k = 0; i < new_hw_ste_arr_sz; i++, k++) {
  curr_hw_ste = hw_ste_arr + i * DR_STE_SIZE;
  prev_hw_ste = (i == 0) ? curr_hw_ste : hw_ste_arr + ((i - 1) * DR_STE_SIZE);
  action_ste = dr_rule_create_collision_htbl(matcher,
          nic_matcher,
          curr_hw_ste);
  if (!action_ste)
   return -ENOMEM;

  mlx5dr_ste_get(action_ste);


  list_add_tail(&action_ste->miss_list_node,
         mlx5dr_ste_get_miss_list(action_ste));

  ste_info_arr[k] = kzalloc(sizeof(*ste_info_arr[k]),
       GFP_KERNEL);
  if (!ste_info_arr[k])
   goto err_exit;


  mlx5dr_ste_set_hit_addr_by_next_htbl(prev_hw_ste, action_ste->htbl);
  ret = dr_rule_add_member(nic_rule, action_ste);
  if (ret) {
   mlx5dr_dbg(matcher->tbl->dmn, "Failed adding rule member\n");
   goto free_ste_info;
  }
  mlx5dr_send_fill_and_append_ste_send_info(action_ste, DR_STE_SIZE, 0,
         curr_hw_ste,
         ste_info_arr[k],
         send_ste_list, 0);
 }

 return 0;

free_ste_info:
 kfree(ste_info_arr[k]);
err_exit:
 mlx5dr_ste_put(action_ste, matcher, nic_matcher);
 return -ENOMEM;
}
