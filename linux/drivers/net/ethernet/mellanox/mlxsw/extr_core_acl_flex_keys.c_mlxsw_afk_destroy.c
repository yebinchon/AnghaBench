
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afk {int key_info_list; } ;


 int WARN_ON (int) ;
 int kfree (struct mlxsw_afk*) ;
 int list_empty (int *) ;

void mlxsw_afk_destroy(struct mlxsw_afk *mlxsw_afk)
{
 WARN_ON(!list_empty(&mlxsw_afk->key_info_list));
 kfree(mlxsw_afk);
}
