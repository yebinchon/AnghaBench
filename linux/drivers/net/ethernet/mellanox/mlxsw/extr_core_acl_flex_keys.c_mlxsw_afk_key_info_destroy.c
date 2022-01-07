
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afk_key_info {int list; } ;


 int kfree (struct mlxsw_afk_key_info*) ;
 int list_del (int *) ;

__attribute__((used)) static void mlxsw_afk_key_info_destroy(struct mlxsw_afk_key_info *key_info)
{
 list_del(&key_info->list);
 kfree(key_info);
}
