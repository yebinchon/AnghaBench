
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct mlx5dr_ste_send_info {int dummy; } ;
struct TYPE_8__ {int num_of_valid_entries; } ;
struct mlx5dr_ste_htbl {TYPE_4__ ctrl; } ;
struct mlx5dr_ste {int miss_list_node; int ste_chain_location; } ;
struct mlx5dr_matcher_rx_tx {TYPE_2__* e_anchor; } ;
struct mlx5dr_matcher {TYPE_3__* tbl; } ;
struct list_head {int dummy; } ;
struct TYPE_7__ {int dmn; } ;
struct TYPE_6__ {TYPE_1__* chunk; } ;
struct TYPE_5__ {int icm_addr; } ;


 int DR_CHUNK_SIZE_1 ;
 int DR_STE_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct mlx5dr_ste_send_info*) ;
 struct mlx5dr_ste_send_info* kzalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int list_del_init (int *) ;
 int mlx5dr_dbg (int ,char*) ;
 int mlx5dr_htbl_get (struct mlx5dr_ste_htbl*) ;
 int mlx5dr_htbl_put (struct mlx5dr_ste_htbl*) ;
 int mlx5dr_send_fill_and_append_ste_send_info (struct mlx5dr_ste*,int ,int ,int *,struct mlx5dr_ste_send_info*,struct list_head*,int) ;
 scalar_t__ mlx5dr_ste_create_next_htbl (struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*,struct mlx5dr_ste*,int *,int ) ;
 int mlx5dr_ste_set_miss_addr (int *,int ) ;

__attribute__((used)) static int dr_rule_handle_empty_entry(struct mlx5dr_matcher *matcher,
          struct mlx5dr_matcher_rx_tx *nic_matcher,
          struct mlx5dr_ste_htbl *cur_htbl,
          struct mlx5dr_ste *ste,
          u8 ste_location,
          u8 *hw_ste,
          struct list_head *miss_list,
          struct list_head *send_list)
{
 struct mlx5dr_ste_send_info *ste_info;


 mlx5dr_htbl_get(cur_htbl);


 list_add_tail(&ste->miss_list_node, miss_list);

 mlx5dr_ste_set_miss_addr(hw_ste, nic_matcher->e_anchor->chunk->icm_addr);

 ste->ste_chain_location = ste_location;

 ste_info = kzalloc(sizeof(*ste_info), GFP_KERNEL);
 if (!ste_info)
  goto clean_ste_setting;

 if (mlx5dr_ste_create_next_htbl(matcher,
     nic_matcher,
     ste,
     hw_ste,
     DR_CHUNK_SIZE_1)) {
  mlx5dr_dbg(matcher->tbl->dmn, "Failed allocating table\n");
  goto clean_ste_info;
 }

 cur_htbl->ctrl.num_of_valid_entries++;

 mlx5dr_send_fill_and_append_ste_send_info(ste, DR_STE_SIZE, 0, hw_ste,
        ste_info, send_list, 0);

 return 0;

clean_ste_info:
 kfree(ste_info);
clean_ste_setting:
 list_del_init(&ste->miss_list_node);
 mlx5dr_htbl_put(cur_htbl);

 return -ENOMEM;
}
