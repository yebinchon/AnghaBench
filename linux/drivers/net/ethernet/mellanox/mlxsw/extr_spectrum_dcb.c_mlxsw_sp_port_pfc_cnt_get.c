
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {struct ieee_pfc* pfc; } ;
struct mlxsw_sp_port {int local_port; TYPE_1__ dcb; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;
struct ieee_pfc {int * indications; int * requests; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PPCNT_LEN ;
 int MLXSW_REG_PPCNT_PRIO_CNT ;
 int mlxsw_reg_ppcnt_pack (char*,int ,int ,size_t) ;
 int mlxsw_reg_ppcnt_rx_pause_get (char*) ;
 int mlxsw_reg_ppcnt_tx_pause_get (char*) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int ppcnt ;

__attribute__((used)) static int mlxsw_sp_port_pfc_cnt_get(struct mlxsw_sp_port *mlxsw_sp_port,
         u8 prio)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
 struct ieee_pfc *my_pfc = mlxsw_sp_port->dcb.pfc;
 char ppcnt_pl[MLXSW_REG_PPCNT_LEN];
 int err;

 mlxsw_reg_ppcnt_pack(ppcnt_pl, mlxsw_sp_port->local_port,
        MLXSW_REG_PPCNT_PRIO_CNT, prio);
 err = mlxsw_reg_query(mlxsw_sp->core, MLXSW_REG(ppcnt), ppcnt_pl);
 if (err)
  return err;

 my_pfc->requests[prio] = mlxsw_reg_ppcnt_tx_pause_get(ppcnt_pl);
 my_pfc->indications[prio] = mlxsw_reg_ppcnt_rx_pause_get(ppcnt_pl);

 return 0;
}
