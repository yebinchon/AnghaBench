
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RITR_LEN ;
 int MLXSW_REG_RITR_RIF_CREATE ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int mlxsw_reg_ritr_if_mac_memcpy_to (char*,char const*) ;
 int mlxsw_reg_ritr_mtu_set (char*,int) ;
 int mlxsw_reg_ritr_op_set (char*,int ) ;
 int mlxsw_reg_ritr_rif_pack (char*,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ritr ;

__attribute__((used)) static int mlxsw_sp_rif_edit(struct mlxsw_sp *mlxsw_sp, u16 rif_index,
        const char *mac, int mtu)
{
 char ritr_pl[MLXSW_REG_RITR_LEN];
 int err;

 mlxsw_reg_ritr_rif_pack(ritr_pl, rif_index);
 err = mlxsw_reg_query(mlxsw_sp->core, MLXSW_REG(ritr), ritr_pl);
 if (err)
  return err;

 mlxsw_reg_ritr_mtu_set(ritr_pl, mtu);
 mlxsw_reg_ritr_if_mac_memcpy_to(ritr_pl, mac);
 mlxsw_reg_ritr_op_set(ritr_pl, MLXSW_REG_RITR_RIF_CREATE);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ritr), ritr_pl);
}
