
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afk_key_info {int ref_count; } ;
struct mlxsw_afk_element_usage {int dummy; } ;
struct mlxsw_afk {int dummy; } ;


 struct mlxsw_afk_key_info* mlxsw_afk_key_info_create (struct mlxsw_afk*,struct mlxsw_afk_element_usage*) ;
 struct mlxsw_afk_key_info* mlxsw_afk_key_info_find (struct mlxsw_afk*,struct mlxsw_afk_element_usage*) ;

struct mlxsw_afk_key_info *
mlxsw_afk_key_info_get(struct mlxsw_afk *mlxsw_afk,
         struct mlxsw_afk_element_usage *elusage)
{
 struct mlxsw_afk_key_info *key_info;

 key_info = mlxsw_afk_key_info_find(mlxsw_afk, elusage);
 if (key_info) {
  key_info->ref_count++;
  return key_info;
 }
 return mlxsw_afk_key_info_create(mlxsw_afk, elusage);
}
