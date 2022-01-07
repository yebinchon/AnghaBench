
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mlx5dr_ste_htbl {int chunk_size; } ;
struct mlx5dr_rule_rx_tx {int dummy; } ;
struct mlx5dr_rule {TYPE_2__* matcher; } ;
struct TYPE_6__ {int max_log_sw_icm_sz; } ;
struct mlx5dr_domain {TYPE_3__ info; } ;
struct list_head {int dummy; } ;
typedef enum mlx5dr_icm_chunk_size { ____Placeholder_mlx5dr_icm_chunk_size } mlx5dr_icm_chunk_size ;
struct TYPE_5__ {TYPE_1__* tbl; } ;
struct TYPE_4__ {struct mlx5dr_domain* dmn; } ;


 struct mlx5dr_ste_htbl* dr_rule_rehash_htbl (struct mlx5dr_rule*,struct mlx5dr_rule_rx_tx*,struct mlx5dr_ste_htbl*,int ,struct list_head*,int) ;
 int min_t (int ,int,int ) ;
 int mlx5dr_icm_next_higher_chunk (int) ;
 int u32 ;

__attribute__((used)) static struct mlx5dr_ste_htbl *dr_rule_rehash(struct mlx5dr_rule *rule,
           struct mlx5dr_rule_rx_tx *nic_rule,
           struct mlx5dr_ste_htbl *cur_htbl,
           u8 ste_location,
           struct list_head *update_list)
{
 struct mlx5dr_domain *dmn = rule->matcher->tbl->dmn;
 enum mlx5dr_icm_chunk_size new_size;

 new_size = mlx5dr_icm_next_higher_chunk(cur_htbl->chunk_size);
 new_size = min_t(u32, new_size, dmn->info.max_log_sw_icm_sz);

 if (new_size == cur_htbl->chunk_size)
  return ((void*)0);

 return dr_rule_rehash_htbl(rule, nic_rule, cur_htbl, ste_location,
       update_list, new_size);
}
