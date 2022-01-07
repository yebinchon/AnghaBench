
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp_acl_rule_info {int values; } ;
typedef enum mlxsw_afk_element { ____Placeholder_mlxsw_afk_element } mlxsw_afk_element ;


 int mlxsw_afk_values_add_u32 (int *,int,int ,int ) ;

void mlxsw_sp_acl_rulei_keymask_u32(struct mlxsw_sp_acl_rule_info *rulei,
        enum mlxsw_afk_element element,
        u32 key_value, u32 mask_value)
{
 mlxsw_afk_values_add_u32(&rulei->values, element,
     key_value, mask_value);
}
