
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct ieee_ets* ets; } ;
struct mlxsw_sp_port {struct net_device* dev; TYPE_1__ dcb; } ;
struct ieee_ets {scalar_t__* tc_tsa; int * tc_tx_bw; int * prio_tc; } ;


 int IEEE_8021QAZ_MAX_TCS ;
 scalar_t__ IEEE_8021QAZ_TSA_ETS ;
 int MLXSW_REG_QEEC_HIERARCY_SUBGROUP ;
 int mlxsw_sp_port_ets_set (struct mlxsw_sp_port*,int ,int,int ,int,int ) ;
 int mlxsw_sp_port_headroom_set (struct mlxsw_sp_port*,struct ieee_ets*) ;
 int mlxsw_sp_port_prio_tc_set (struct mlxsw_sp_port*,int,int ) ;
 int netdev_err (struct net_device*,char*,int,...) ;

__attribute__((used)) static int __mlxsw_sp_dcbnl_ieee_setets(struct mlxsw_sp_port *mlxsw_sp_port,
     struct ieee_ets *ets)
{
 struct ieee_ets *my_ets = mlxsw_sp_port->dcb.ets;
 struct net_device *dev = mlxsw_sp_port->dev;
 int i, err;


 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  bool dwrr = ets->tc_tsa[i] == IEEE_8021QAZ_TSA_ETS;
  u8 weight = ets->tc_tx_bw[i];

  err = mlxsw_sp_port_ets_set(mlxsw_sp_port,
         MLXSW_REG_QEEC_HIERARCY_SUBGROUP, i,
         0, dwrr, weight);
  if (err) {
   netdev_err(dev, "Failed to link subgroup ETS element %d to group\n",
       i);
   goto err_port_ets_set;
  }
 }

 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  err = mlxsw_sp_port_prio_tc_set(mlxsw_sp_port, i,
      ets->prio_tc[i]);
  if (err) {
   netdev_err(dev, "Failed to map prio %d to TC %d\n", i,
       ets->prio_tc[i]);
   goto err_port_prio_tc_set;
  }
 }


 err = mlxsw_sp_port_headroom_set(mlxsw_sp_port, ets);
 if (err)
  goto err_port_headroom_set;

 return 0;

err_port_headroom_set:
 i = IEEE_8021QAZ_MAX_TCS;
err_port_prio_tc_set:
 for (i--; i >= 0; i--)
  mlxsw_sp_port_prio_tc_set(mlxsw_sp_port, i, my_ets->prio_tc[i]);
 i = IEEE_8021QAZ_MAX_TCS;
err_port_ets_set:
 for (i--; i >= 0; i--) {
  bool dwrr = my_ets->tc_tsa[i] == IEEE_8021QAZ_TSA_ETS;
  u8 weight = my_ets->tc_tx_bw[i];

  err = mlxsw_sp_port_ets_set(mlxsw_sp_port,
         MLXSW_REG_QEEC_HIERARCY_SUBGROUP, i,
         0, dwrr, weight);
 }
 return err;
}
