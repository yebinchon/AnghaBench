
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_ste_send_info {int dummy; } ;
struct TYPE_2__ {int num_of_valid_entries; int num_of_collisions; } ;
struct mlx5dr_ste_htbl {TYPE_1__ ctrl; } ;
struct mlx5dr_ste {int hw_ste; int miss_list_node; struct mlx5dr_ste_htbl* htbl; } ;
struct list_head {int dummy; } ;


 int DR_STE_SIZE_REDUCED ;
 int dr_ste_replace (struct mlx5dr_ste*,struct mlx5dr_ste*) ;
 int list_del_init (int *) ;
 int mlx5dr_htbl_put (struct mlx5dr_ste_htbl*) ;
 int mlx5dr_rule_update_rule_member (struct mlx5dr_ste*,struct mlx5dr_ste*) ;
 int mlx5dr_send_fill_and_append_ste_send_info (struct mlx5dr_ste*,int ,int ,int ,struct mlx5dr_ste_send_info*,struct list_head*,int) ;

__attribute__((used)) static void
dr_ste_replace_head_ste(struct mlx5dr_ste *ste, struct mlx5dr_ste *next_ste,
   struct mlx5dr_ste_send_info *ste_info_head,
   struct list_head *send_ste_list,
   struct mlx5dr_ste_htbl *stats_tbl)

{
 struct mlx5dr_ste_htbl *next_miss_htbl;

 next_miss_htbl = next_ste->htbl;


 list_del_init(&next_ste->miss_list_node);


 mlx5dr_rule_update_rule_member(next_ste, ste);


 dr_ste_replace(ste, next_ste);




 mlx5dr_htbl_put(next_miss_htbl);

 mlx5dr_send_fill_and_append_ste_send_info(ste, DR_STE_SIZE_REDUCED,
        0, ste->hw_ste,
        ste_info_head,
        send_ste_list,
        1 );

 stats_tbl->ctrl.num_of_collisions--;
 stats_tbl->ctrl.num_of_valid_entries--;
}
