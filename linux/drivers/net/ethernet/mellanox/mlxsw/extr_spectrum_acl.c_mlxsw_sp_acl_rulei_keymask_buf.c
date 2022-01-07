
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_acl_rule_info {int values; } ;
typedef enum mlxsw_afk_element { ____Placeholder_mlxsw_afk_element } mlxsw_afk_element ;


 int mlxsw_afk_values_add_buf (int *,int,char const*,char const*,unsigned int) ;

void mlxsw_sp_acl_rulei_keymask_buf(struct mlxsw_sp_acl_rule_info *rulei,
        enum mlxsw_afk_element element,
        const char *key_value,
        const char *mask_value, unsigned int len)
{
 mlxsw_afk_values_add_buf(&rulei->values, element,
     key_value, mask_value, len);
}
