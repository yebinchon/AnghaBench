
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afa_set {int kvdl_index; struct mlxsw_afa_set* next; struct mlxsw_afa_set* prev; } ;
struct mlxsw_afa_block {int finished; struct mlxsw_afa_set* first_set; int afa; struct mlxsw_afa_set* cur_set; } ;


 scalar_t__ IS_ERR (struct mlxsw_afa_set*) ;
 int PTR_ERR (struct mlxsw_afa_set*) ;
 struct mlxsw_afa_set* mlxsw_afa_set_get (int ,struct mlxsw_afa_set*) ;
 int mlxsw_afa_set_next_set (struct mlxsw_afa_set*,int ) ;

int mlxsw_afa_block_commit(struct mlxsw_afa_block *block)
{
 struct mlxsw_afa_set *set = block->cur_set;
 struct mlxsw_afa_set *prev_set;

 block->cur_set = ((void*)0);
 block->finished = 1;






 do {
  prev_set = set->prev;
  set = mlxsw_afa_set_get(block->afa, set);
  if (IS_ERR(set))




   return PTR_ERR(set);
  if (prev_set) {
   prev_set->next = set;
   mlxsw_afa_set_next_set(prev_set, set->kvdl_index);
   set = prev_set;
  }
 } while (prev_set);

 block->first_set = set;
 return 0;
}
