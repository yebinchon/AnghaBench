
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vifi_t ;
struct mlxsw_sp_mr_vif {int dev; } ;
struct mlxsw_sp_mr_table {struct mlxsw_sp_mr_vif* vifs; } ;


 size_t MAXVIFS ;
 scalar_t__ WARN_ON (int) ;
 int mlxsw_sp_mr_vif_unresolve (struct mlxsw_sp_mr_table*,int *,struct mlxsw_sp_mr_vif*) ;

void mlxsw_sp_mr_vif_del(struct mlxsw_sp_mr_table *mr_table, vifi_t vif_index)
{
 struct mlxsw_sp_mr_vif *mr_vif = &mr_table->vifs[vif_index];

 if (WARN_ON(vif_index >= MAXVIFS))
  return;
 if (WARN_ON(!mr_vif->dev))
  return;
 mlxsw_sp_mr_vif_unresolve(mr_table, ((void*)0), mr_vif);
}
