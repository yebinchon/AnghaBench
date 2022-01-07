
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_TNPC_LEN ;
 int MLXSW_REG_TNPC_TUNNEL_PORT_NVE ;
 int mlxsw_reg_tnpc_pack (char*,int ,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int tnpc ;

__attribute__((used)) static bool mlxsw_sp2_nve_vxlan_learning_set(struct mlxsw_sp *mlxsw_sp,
          bool learning_en)
{
 char tnpc_pl[MLXSW_REG_TNPC_LEN];

 mlxsw_reg_tnpc_pack(tnpc_pl, MLXSW_REG_TNPC_TUNNEL_PORT_NVE,
       learning_en);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(tnpc), tnpc_pl);
}
