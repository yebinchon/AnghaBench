
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int usage; } ;
struct mlxsw_afk_key_info {int* element_to_block; struct mlxsw_afk_block** blocks; TYPE_1__ elusage; } ;
struct mlxsw_afk_element_inst {int dummy; } ;
struct mlxsw_afk_block {int dummy; } ;
typedef enum mlxsw_afk_element { ____Placeholder_mlxsw_afk_element } mlxsw_afk_element ;


 scalar_t__ WARN_ON (int) ;
 struct mlxsw_afk_element_inst* mlxsw_afk_block_elinst_get (struct mlxsw_afk_block const*,int) ;
 int test_bit (int,int ) ;

__attribute__((used)) static const struct mlxsw_afk_element_inst *
mlxsw_afk_key_info_elinst_get(struct mlxsw_afk_key_info *key_info,
         enum mlxsw_afk_element element,
         int *p_block_index)
{
 const struct mlxsw_afk_element_inst *elinst;
 const struct mlxsw_afk_block *block;
 int block_index;

 if (WARN_ON(!test_bit(element, key_info->elusage.usage)))
  return ((void*)0);
 block_index = key_info->element_to_block[element];
 block = key_info->blocks[block_index];

 elinst = mlxsw_afk_block_elinst_get(block, element);
 if (WARN_ON(!elinst))
  return ((void*)0);

 *p_block_index = block_index;
 return elinst;
}
