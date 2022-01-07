
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afk_key_info {int elusage; } ;
struct mlxsw_afk_element_usage {int dummy; } ;


 int mlxsw_afk_element_usage_subset (struct mlxsw_afk_element_usage*,int *) ;

bool mlxsw_afk_key_info_subset(struct mlxsw_afk_key_info *key_info,
          struct mlxsw_afk_element_usage *elusage)
{
 return mlxsw_afk_element_usage_subset(elusage, &key_info->elusage);
}
