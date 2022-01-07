
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_MTPPPC_LEN ;
 int mlxsw_reg_mtpppc_pack (char*,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mtpppc ;

__attribute__((used)) static int mlxsw_sp1_ptp_mtpppc_set(struct mlxsw_sp *mlxsw_sp,
        u16 ing_types, u16 egr_types)
{
 char mtpppc_pl[MLXSW_REG_MTPPPC_LEN];

 mlxsw_reg_mtpppc_pack(mtpppc_pl, ing_types, egr_types);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(mtpppc), mtpppc_pl);
}
