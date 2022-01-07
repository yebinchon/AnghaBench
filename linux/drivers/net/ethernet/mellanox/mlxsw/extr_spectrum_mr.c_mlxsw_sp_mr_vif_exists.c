
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_vif {int dev; } ;



__attribute__((used)) static bool mlxsw_sp_mr_vif_exists(const struct mlxsw_sp_mr_vif *vif)
{
 return vif->dev;
}
