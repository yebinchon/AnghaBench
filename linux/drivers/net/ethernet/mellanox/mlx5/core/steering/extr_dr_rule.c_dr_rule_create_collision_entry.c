
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx5dr_ste {TYPE_1__* htbl; int ste_chain_location; } ;
struct mlx5dr_matcher_rx_tx {int dummy; } ;
struct mlx5dr_matcher {TYPE_2__* tbl; } ;
struct TYPE_4__ {int dmn; } ;
struct TYPE_3__ {int miss_list; } ;


 int DR_CHUNK_SIZE_1 ;
 struct mlx5dr_ste* dr_rule_create_collision_htbl (struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*,int *) ;
 int mlx5dr_dbg (int ,char*) ;
 scalar_t__ mlx5dr_ste_create_next_htbl (struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*,struct mlx5dr_ste*,int *,int ) ;
 int mlx5dr_ste_free (struct mlx5dr_ste*,struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*) ;
 int mlx5dr_ste_get_miss_list (struct mlx5dr_ste*) ;

__attribute__((used)) static struct mlx5dr_ste *
dr_rule_create_collision_entry(struct mlx5dr_matcher *matcher,
          struct mlx5dr_matcher_rx_tx *nic_matcher,
          u8 *hw_ste,
          struct mlx5dr_ste *orig_ste)
{
 struct mlx5dr_ste *ste;

 ste = dr_rule_create_collision_htbl(matcher, nic_matcher, hw_ste);
 if (!ste) {
  mlx5dr_dbg(matcher->tbl->dmn, "Failed creating collision entry\n");
  return ((void*)0);
 }

 ste->ste_chain_location = orig_ste->ste_chain_location;


 ste->htbl->miss_list = mlx5dr_ste_get_miss_list(orig_ste);


 if (mlx5dr_ste_create_next_htbl(matcher, nic_matcher, ste, hw_ste,
     DR_CHUNK_SIZE_1)) {
  mlx5dr_dbg(matcher->tbl->dmn, "Failed allocating table\n");
  goto free_tbl;
 }

 return ste;

free_tbl:
 mlx5dr_ste_free(ste, matcher, nic_matcher);
 return ((void*)0);
}
