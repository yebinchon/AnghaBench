
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afa_set {struct mlxsw_afa_set* next; } ;
struct mlxsw_afa_block {int afa; struct mlxsw_afa_set* first_set; } ;


 int kfree (struct mlxsw_afa_block*) ;
 int mlxsw_afa_resources_destroy (struct mlxsw_afa_block*) ;
 int mlxsw_afa_set_put (int ,struct mlxsw_afa_set*) ;

void mlxsw_afa_block_destroy(struct mlxsw_afa_block *block)
{
 struct mlxsw_afa_set *set = block->first_set;
 struct mlxsw_afa_set *next_set;

 do {
  next_set = set->next;
  mlxsw_afa_set_put(block->afa, set);
  set = next_set;
 } while (set);
 mlxsw_afa_resources_destroy(block);
 kfree(block);
}
