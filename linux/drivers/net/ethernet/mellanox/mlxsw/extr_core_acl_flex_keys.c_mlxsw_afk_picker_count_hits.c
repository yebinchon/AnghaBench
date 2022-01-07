
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_afk_picker {TYPE_2__* hits; } ;
struct mlxsw_afk_element_inst {TYPE_1__* info; } ;
struct mlxsw_afk_block {int instances_count; struct mlxsw_afk_element_inst* instances; } ;
struct mlxsw_afk {int blocks_count; struct mlxsw_afk_block* blocks; } ;
typedef enum mlxsw_afk_element { ____Placeholder_mlxsw_afk_element } mlxsw_afk_element ;
struct TYPE_4__ {int total; int element; } ;
struct TYPE_3__ {int element; } ;


 int __set_bit (int,int ) ;

__attribute__((used)) static void mlxsw_afk_picker_count_hits(struct mlxsw_afk *mlxsw_afk,
     struct mlxsw_afk_picker *picker,
     enum mlxsw_afk_element element)
{
 int i;
 int j;

 for (i = 0; i < mlxsw_afk->blocks_count; i++) {
  const struct mlxsw_afk_block *block = &mlxsw_afk->blocks[i];

  for (j = 0; j < block->instances_count; j++) {
   struct mlxsw_afk_element_inst *elinst;

   elinst = &block->instances[j];
   if (elinst->info->element == element) {
    __set_bit(element, picker->hits[i].element);
    picker->hits[i].total++;
   }
  }
 }
}
