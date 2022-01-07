
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RITR_LEN ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int mlxsw_reg_ritr_enable_set (char*,int) ;
 int mlxsw_reg_ritr_rif_pack (char*,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ritr ;

__attribute__((used)) static int mlxsw_sp_router_rif_disable(struct mlxsw_sp *mlxsw_sp, u16 rif)
{
 char ritr_pl[MLXSW_REG_RITR_LEN];
 int err;

 mlxsw_reg_ritr_rif_pack(ritr_pl, rif);
 err = mlxsw_reg_query(mlxsw_sp->core, MLXSW_REG(ritr), ritr_pl);
 if (err)
  return err;

 mlxsw_reg_ritr_enable_set(ritr_pl, 0);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ritr), ritr_pl);
}
