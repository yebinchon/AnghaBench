
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int pg_tcs; } ;
struct TYPE_4__ {TYPE_1__ num_tcs; } ;
struct ixgbe_adapter {TYPE_2__ dcb_cfg; struct ieee_ets* ixgbe_ieee_ets; } ;
struct ieee_ets {int prio_tc; int tc_tsa; int tc_rx_bw; int tc_tx_bw; int cbs; int ets_cap; } ;


 int memcpy (int ,int ,int) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_dcbnl_ieee_getets(struct net_device *dev,
       struct ieee_ets *ets)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);
 struct ieee_ets *my_ets = adapter->ixgbe_ieee_ets;

 ets->ets_cap = adapter->dcb_cfg.num_tcs.pg_tcs;


 if (!my_ets)
  return 0;

 ets->cbs = my_ets->cbs;
 memcpy(ets->tc_tx_bw, my_ets->tc_tx_bw, sizeof(ets->tc_tx_bw));
 memcpy(ets->tc_rx_bw, my_ets->tc_rx_bw, sizeof(ets->tc_rx_bw));
 memcpy(ets->tc_tsa, my_ets->tc_tsa, sizeof(ets->tc_tsa));
 memcpy(ets->prio_tc, my_ets->prio_tc, sizeof(ets->prio_tc));
 return 0;
}
