
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_rif_destroy (struct mlxsw_sp_rif*) ;
 struct mlxsw_sp_rif* mlxsw_sp_rif_find_by_dev (struct mlxsw_sp*,struct net_device*) ;

void mlxsw_sp_rif_destroy_by_dev(struct mlxsw_sp *mlxsw_sp,
     struct net_device *dev)
{
 struct mlxsw_sp_rif *rif;

 rif = mlxsw_sp_rif_find_by_dev(mlxsw_sp, dev);
 if (!rif)
  return;
 mlxsw_sp_rif_destroy(rif);
}
