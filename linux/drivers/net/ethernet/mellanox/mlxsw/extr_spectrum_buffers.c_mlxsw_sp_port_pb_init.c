
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int width; } ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; TYPE_1__ mapping; } ;
struct mlxsw_sp {int core; } ;


 int ARRAY_SIZE (int const*) ;
 int MLXSW_PORT_MAX_MTU ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_PBMC_LEN ;
 int MLXSW_REG_PBMC_PORT_SHARED_BUF_IDX ;
 int MLXSW_SP_PB_HEADROOM ;
 int MLXSW_SP_PB_UNUSED ;
 int mlxsw_reg_pbmc_lossy_buffer_pack (char*,int,int ) ;
 int mlxsw_reg_pbmc_pack (char*,int ,int,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_bytes_cells (struct mlxsw_sp*,int const) ;
 int pbmc ;

__attribute__((used)) static int mlxsw_sp_port_pb_init(struct mlxsw_sp_port *mlxsw_sp_port)
{
 const u32 pbs[] = {
  [0] = MLXSW_SP_PB_HEADROOM * mlxsw_sp_port->mapping.width,
  [9] = MLXSW_PORT_MAX_MTU,
 };
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 char pbmc_pl[MLXSW_REG_PBMC_LEN];
 int i;

 mlxsw_reg_pbmc_pack(pbmc_pl, mlxsw_sp_port->local_port,
       0xffff, 0xffff / 2);
 for (i = 0; i < ARRAY_SIZE(pbs); i++) {
  u16 size = mlxsw_sp_bytes_cells(mlxsw_sp, pbs[i]);

  if (i == MLXSW_SP_PB_UNUSED)
   continue;
  mlxsw_reg_pbmc_lossy_buffer_pack(pbmc_pl, i, size);
 }
 mlxsw_reg_pbmc_lossy_buffer_pack(pbmc_pl,
      MLXSW_REG_PBMC_PORT_SHARED_BUF_IDX, 0);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(pbmc), pbmc_pl);
}
