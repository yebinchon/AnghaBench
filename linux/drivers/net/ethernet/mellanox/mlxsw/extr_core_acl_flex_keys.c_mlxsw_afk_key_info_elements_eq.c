
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afk_key_info {int elusage; } ;
struct mlxsw_afk_element_usage {int dummy; } ;


 scalar_t__ memcmp (int *,struct mlxsw_afk_element_usage*,int) ;

__attribute__((used)) static bool
mlxsw_afk_key_info_elements_eq(struct mlxsw_afk_key_info *key_info,
          struct mlxsw_afk_element_usage *elusage)
{
 return memcmp(&key_info->elusage, elusage, sizeof(*elusage)) == 0;
}
