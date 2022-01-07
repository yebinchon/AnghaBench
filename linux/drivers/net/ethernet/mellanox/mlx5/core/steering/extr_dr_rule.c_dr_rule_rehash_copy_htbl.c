
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_ste_htbl {struct mlx5dr_ste* ste_arr; int chunk_size; } ;
struct mlx5dr_ste {int dummy; } ;
struct mlx5dr_matcher_rx_tx {int dummy; } ;
struct mlx5dr_matcher {TYPE_1__* tbl; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int dmn; } ;


 int EINVAL ;
 int dr_rule_rehash_copy_miss_list (struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*,int ,struct mlx5dr_ste_htbl*,struct list_head*) ;
 int mlx5dr_dbg (int ,char*) ;
 int mlx5dr_icm_pool_chunk_size_to_entries (int ) ;
 int mlx5dr_ste_get_miss_list (struct mlx5dr_ste*) ;
 scalar_t__ mlx5dr_ste_not_used_ste (struct mlx5dr_ste*) ;

__attribute__((used)) static int dr_rule_rehash_copy_htbl(struct mlx5dr_matcher *matcher,
        struct mlx5dr_matcher_rx_tx *nic_matcher,
        struct mlx5dr_ste_htbl *cur_htbl,
        struct mlx5dr_ste_htbl *new_htbl,
        struct list_head *update_list)
{
 struct mlx5dr_ste *cur_ste;
 int cur_entries;
 int err = 0;
 int i;

 cur_entries = mlx5dr_icm_pool_chunk_size_to_entries(cur_htbl->chunk_size);

 if (cur_entries < 1) {
  mlx5dr_dbg(matcher->tbl->dmn, "Invalid number of entries\n");
  return -EINVAL;
 }

 for (i = 0; i < cur_entries; i++) {
  cur_ste = &cur_htbl->ste_arr[i];
  if (mlx5dr_ste_not_used_ste(cur_ste))
   continue;

  err = dr_rule_rehash_copy_miss_list(matcher,
          nic_matcher,
          mlx5dr_ste_get_miss_list(cur_ste),
          new_htbl,
          update_list);
  if (err)
   goto clean_copy;
 }

clean_copy:
 return err;
}
