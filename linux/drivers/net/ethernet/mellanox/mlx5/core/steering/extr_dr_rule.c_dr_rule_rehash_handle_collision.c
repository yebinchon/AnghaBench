
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx5dr_ste {TYPE_1__* htbl; } ;
struct mlx5dr_matcher_rx_tx {int dummy; } ;
struct mlx5dr_matcher {TYPE_2__* tbl; } ;
struct list_head {int dummy; } ;
struct TYPE_4__ {int dmn; } ;
struct TYPE_3__ {int miss_list; } ;


 int dr_rule_append_to_miss_list (struct mlx5dr_ste*,int ,struct list_head*) ;
 struct mlx5dr_ste* dr_rule_create_collision_htbl (struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*,int *) ;
 int mlx5dr_dbg (int ,char*) ;
 int mlx5dr_ste_free (struct mlx5dr_ste*,struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*) ;
 int mlx5dr_ste_get_miss_list (struct mlx5dr_ste*) ;

__attribute__((used)) static struct mlx5dr_ste *
dr_rule_rehash_handle_collision(struct mlx5dr_matcher *matcher,
    struct mlx5dr_matcher_rx_tx *nic_matcher,
    struct list_head *update_list,
    struct mlx5dr_ste *col_ste,
    u8 *hw_ste)
{
 struct mlx5dr_ste *new_ste;
 int ret;

 new_ste = dr_rule_create_collision_htbl(matcher, nic_matcher, hw_ste);
 if (!new_ste)
  return ((void*)0);


 new_ste->htbl->miss_list = mlx5dr_ste_get_miss_list(col_ste);


 ret = dr_rule_append_to_miss_list(new_ste,
       mlx5dr_ste_get_miss_list(col_ste),
       update_list);
 if (ret) {
  mlx5dr_dbg(matcher->tbl->dmn, "Failed update dup entry\n");
  goto err_exit;
 }

 return new_ste;

err_exit:
 mlx5dr_ste_free(new_ste, matcher, nic_matcher);
 return ((void*)0);
}
