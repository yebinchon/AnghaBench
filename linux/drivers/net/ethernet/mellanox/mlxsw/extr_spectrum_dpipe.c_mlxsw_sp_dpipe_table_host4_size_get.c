
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlxsw_sp {int dummy; } ;


 int AF_INET ;
 int mlxsw_sp_dpipe_table_host_size_get (struct mlxsw_sp*,int ) ;

__attribute__((used)) static u64 mlxsw_sp_dpipe_table_host4_size_get(void *priv)
{
 struct mlxsw_sp *mlxsw_sp = priv;

 return mlxsw_sp_dpipe_table_host_size_get(mlxsw_sp, AF_INET);
}
