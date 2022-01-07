
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp_mr_vif {int dev; } ;
struct mlxsw_sp_mr_table {int dummy; } ;


 struct mlxsw_sp_mr_vif* mlxsw_sp_mr_dev_vif_lookup (struct mlxsw_sp_mr_table*,struct net_device const*) ;
 int mlxsw_sp_mr_vif_unresolve (struct mlxsw_sp_mr_table*,int ,struct mlxsw_sp_mr_vif*) ;
 struct net_device* mlxsw_sp_rif_dev (struct mlxsw_sp_rif const*) ;

void mlxsw_sp_mr_rif_del(struct mlxsw_sp_mr_table *mr_table,
    const struct mlxsw_sp_rif *rif)
{
 const struct net_device *rif_dev = mlxsw_sp_rif_dev(rif);
 struct mlxsw_sp_mr_vif *mr_vif;

 if (!rif_dev)
  return;

 mr_vif = mlxsw_sp_mr_dev_vif_lookup(mr_table, rif_dev);
 if (!mr_vif)
  return;
 mlxsw_sp_mr_vif_unresolve(mr_table, mr_vif->dev, mr_vif);
}
