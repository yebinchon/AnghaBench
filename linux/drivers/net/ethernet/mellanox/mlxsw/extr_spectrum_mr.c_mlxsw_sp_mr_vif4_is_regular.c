
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_mr_vif {int vif_flags; } ;


 int VIFF_REGISTER ;
 int VIFF_TUNNEL ;

__attribute__((used)) static bool mlxsw_sp_mr_vif4_is_regular(const struct mlxsw_sp_mr_vif *vif)
{
 return !(vif->vif_flags & (VIFF_TUNNEL | VIFF_REGISTER));
}
