
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_port {struct net_device* dev; } ;
struct ieee_ets {int* tc_tsa; int* tc_tx_bw; int* prio_tc; } ;


 int EINVAL ;
 int IEEE_8021QAZ_MAX_TCS ;


 int netdev_err (struct net_device*,char*) ;

__attribute__((used)) static int mlxsw_sp_port_ets_validate(struct mlxsw_sp_port *mlxsw_sp_port,
          struct ieee_ets *ets)
{
 struct net_device *dev = mlxsw_sp_port->dev;
 bool has_ets_tc = 0;
 int i, tx_bw_sum = 0;

 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  switch (ets->tc_tsa[i]) {
  case 128:
   break;
  case 129:
   has_ets_tc = 1;
   tx_bw_sum += ets->tc_tx_bw[i];
   break;
  default:
   netdev_err(dev, "Only strict priority and ETS are supported\n");
   return -EINVAL;
  }

  if (ets->prio_tc[i] >= IEEE_8021QAZ_MAX_TCS) {
   netdev_err(dev, "Invalid TC\n");
   return -EINVAL;
  }
 }

 if (has_ets_tc && tx_bw_sum != 100) {
  netdev_err(dev, "Total ETS bandwidth should equal 100\n");
  return -EINVAL;
 }

 return 0;
}
