
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp {int dummy; } ;


 int MLXSW_SP_PAUSE_DELAY ;
 int mlxsw_sp_bytes_cells (struct mlxsw_sp const*,int ) ;
 int mlxsw_sp_pfc_delay_get (struct mlxsw_sp const*,int,int ) ;

__attribute__((used)) static u16 mlxsw_sp_pg_buf_delay_get(const struct mlxsw_sp *mlxsw_sp, int mtu,
         u16 delay, bool pfc, bool pause)
{
 if (pfc)
  return mlxsw_sp_pfc_delay_get(mlxsw_sp, mtu, delay);
 else if (pause)
  return mlxsw_sp_bytes_cells(mlxsw_sp, MLXSW_SP_PAUSE_DELAY);
 else
  return 0;
}
