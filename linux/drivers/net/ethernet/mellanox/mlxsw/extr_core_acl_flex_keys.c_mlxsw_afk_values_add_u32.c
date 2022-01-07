
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_item {int dummy; } ;
struct TYPE_2__ {int mask; int key; } ;
struct mlxsw_afk_element_values {int elusage; TYPE_1__ storage; } ;
struct mlxsw_afk_element_info {scalar_t__ type; struct mlxsw_item item; } ;
typedef enum mlxsw_afk_element { ____Placeholder_mlxsw_afk_element } mlxsw_afk_element ;


 scalar_t__ MLXSW_AFK_ELEMENT_TYPE_U32 ;
 scalar_t__ WARN_ON (int) ;
 int __mlxsw_item_set32 (int ,struct mlxsw_item const*,int ,int ) ;
 struct mlxsw_afk_element_info* mlxsw_afk_element_infos ;
 int mlxsw_afk_element_usage_add (int *,int) ;

void mlxsw_afk_values_add_u32(struct mlxsw_afk_element_values *values,
         enum mlxsw_afk_element element,
         u32 key_value, u32 mask_value)
{
 const struct mlxsw_afk_element_info *elinfo =
    &mlxsw_afk_element_infos[element];
 const struct mlxsw_item *storage_item = &elinfo->item;

 if (!mask_value)
  return;
 if (WARN_ON(elinfo->type != MLXSW_AFK_ELEMENT_TYPE_U32))
  return;
 __mlxsw_item_set32(values->storage.key, storage_item, 0, key_value);
 __mlxsw_item_set32(values->storage.mask, storage_item, 0, mask_value);
 mlxsw_afk_element_usage_add(&values->elusage, element);
}
