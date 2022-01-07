
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int IEEE_8021QAZ_MAX_TCS ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_PBMC_LEN ;
 int mlxsw_reg_pbmc_lossy_buffer_pack (char*,int ,int ) ;
 int mlxsw_reg_pbmc_pack (char*,int ,int ,int ) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_ets_has_pg (int *,int ) ;
 int pbmc ;

__attribute__((used)) static int mlxsw_sp_port_pg_destroy(struct mlxsw_sp_port *mlxsw_sp_port,
        u8 *old_prio_tc, u8 *new_prio_tc)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char pbmc_pl[MLXSW_REG_PBMC_LEN];
 int err, i;

 mlxsw_reg_pbmc_pack(pbmc_pl, mlxsw_sp_port->local_port, 0, 0);
 err = mlxsw_reg_query(mlxsw_sp->core, MLXSW_REG(pbmc), pbmc_pl);
 if (err)
  return err;

 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  u8 pg = old_prio_tc[i];

  if (!mlxsw_sp_ets_has_pg(new_prio_tc, pg))
   mlxsw_reg_pbmc_lossy_buffer_pack(pbmc_pl, pg, 0);
 }

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(pbmc), pbmc_pl);
}
