
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afk_key_info {scalar_t__ ref_count; } ;


 int mlxsw_afk_key_info_destroy (struct mlxsw_afk_key_info*) ;

void mlxsw_afk_key_info_put(struct mlxsw_afk_key_info *key_info)
{
 if (--key_info->ref_count)
  return;
 mlxsw_afk_key_info_destroy(key_info);
}
