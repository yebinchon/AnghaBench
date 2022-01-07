
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct mlxsw_sp_port {int local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
struct ieee_pfc {int pfc_en; scalar_t__ delay; } ;


 int BIT (int) ;
 int ENOBUFS ;
 int IEEE_8021QAZ_MAX_TCS ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_PBMC_LEN ;
 int mlxsw_reg_pbmc_pack (char*,int ,int ,int ) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 scalar_t__ mlxsw_sp_pg_buf_delay_get (struct mlxsw_sp*,int,scalar_t__,int,int) ;
 int mlxsw_sp_pg_buf_pack (char*,int,scalar_t__,scalar_t__,int) ;
 scalar_t__ mlxsw_sp_pg_buf_threshold_get (struct mlxsw_sp*,int) ;
 scalar_t__ mlxsw_sp_sb_max_headroom_cells (struct mlxsw_sp*) ;
 int pbmc ;

int __mlxsw_sp_port_headroom_set(struct mlxsw_sp_port *mlxsw_sp_port, int mtu,
     u8 *prio_tc, bool pause_en,
     struct ieee_pfc *my_pfc)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 u8 pfc_en = !!my_pfc ? my_pfc->pfc_en : 0;
 u16 delay = !!my_pfc ? my_pfc->delay : 0;
 char pbmc_pl[MLXSW_REG_PBMC_LEN];
 u32 taken_headroom_cells = 0;
 u32 max_headroom_cells;
 int i, j, err;

 max_headroom_cells = mlxsw_sp_sb_max_headroom_cells(mlxsw_sp);

 mlxsw_reg_pbmc_pack(pbmc_pl, mlxsw_sp_port->local_port, 0, 0);
 err = mlxsw_reg_query(mlxsw_sp->core, MLXSW_REG(pbmc), pbmc_pl);
 if (err)
  return err;

 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  bool configure = 0;
  bool pfc = 0;
  u16 thres_cells;
  u16 delay_cells;
  u16 total_cells;
  bool lossy;

  for (j = 0; j < IEEE_8021QAZ_MAX_TCS; j++) {
   if (prio_tc[j] == i) {
    pfc = pfc_en & BIT(j);
    configure = 1;
    break;
   }
  }

  if (!configure)
   continue;

  lossy = !(pfc || pause_en);
  thres_cells = mlxsw_sp_pg_buf_threshold_get(mlxsw_sp, mtu);
  delay_cells = mlxsw_sp_pg_buf_delay_get(mlxsw_sp, mtu, delay,
       pfc, pause_en);
  total_cells = thres_cells + delay_cells;

  taken_headroom_cells += total_cells;
  if (taken_headroom_cells > max_headroom_cells)
   return -ENOBUFS;

  mlxsw_sp_pg_buf_pack(pbmc_pl, i, total_cells,
         thres_cells, lossy);
 }

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(pbmc), pbmc_pl);
}
