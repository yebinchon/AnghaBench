
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_vif {int vif_flags; } ;


 int MIFF_REGISTER ;

__attribute__((used)) static bool mlxsw_sp_mr_vif6_is_regular(const struct mlxsw_sp_mr_vif *vif)
{
 return !(vif->vif_flags & MIFF_REGISTER);
}
