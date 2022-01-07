
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mr_mfc {int dummy; } ;
struct mlxsw_sp_mr_table {int route_ht; TYPE_1__* ops; } ;
struct mlxsw_sp_mr_route_key {int dummy; } ;
struct mlxsw_sp_mr_route {int dummy; } ;
struct TYPE_2__ {int (* key_create ) (struct mlxsw_sp_mr_table*,struct mlxsw_sp_mr_route_key*,struct mr_mfc*) ;} ;


 int __mlxsw_sp_mr_route_del (struct mlxsw_sp_mr_table*,struct mlxsw_sp_mr_route*) ;
 int mlxsw_sp_mr_route_ht_params ;
 struct mlxsw_sp_mr_route* rhashtable_lookup_fast (int *,struct mlxsw_sp_mr_route_key*,int ) ;
 int stub1 (struct mlxsw_sp_mr_table*,struct mlxsw_sp_mr_route_key*,struct mr_mfc*) ;

void mlxsw_sp_mr_route_del(struct mlxsw_sp_mr_table *mr_table,
      struct mr_mfc *mfc)
{
 struct mlxsw_sp_mr_route *mr_route;
 struct mlxsw_sp_mr_route_key key;

 mr_table->ops->key_create(mr_table, &key, mfc);
 mr_route = rhashtable_lookup_fast(&mr_table->route_ht, &key,
       mlxsw_sp_mr_route_ht_params);
 if (mr_route)
  __mlxsw_sp_mr_route_del(mr_table, mr_route);
}
