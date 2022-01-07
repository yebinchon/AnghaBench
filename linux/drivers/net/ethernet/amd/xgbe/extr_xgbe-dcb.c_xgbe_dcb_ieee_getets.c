
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tc_cnt; } ;
struct xgbe_prv_data {TYPE_2__* ets; TYPE_1__ hw_feat; } ;
struct net_device {int dummy; } ;
struct ieee_ets {int prio_tc; int tc_tsa; int tc_tx_bw; int cbs; int ets_cap; } ;
struct TYPE_4__ {int prio_tc; int tc_tsa; int tc_tx_bw; int cbs; } ;


 int memcpy (int ,int ,int) ;
 struct xgbe_prv_data* netdev_priv (struct net_device*) ;

__attribute__((used)) static int xgbe_dcb_ieee_getets(struct net_device *netdev,
    struct ieee_ets *ets)
{
 struct xgbe_prv_data *pdata = netdev_priv(netdev);


 ets->ets_cap = pdata->hw_feat.tc_cnt;

 if (pdata->ets) {
  ets->cbs = pdata->ets->cbs;
  memcpy(ets->tc_tx_bw, pdata->ets->tc_tx_bw,
         sizeof(ets->tc_tx_bw));
  memcpy(ets->tc_tsa, pdata->ets->tc_tsa,
         sizeof(ets->tc_tsa));
  memcpy(ets->prio_tc, pdata->ets->prio_tc,
         sizeof(ets->prio_tc));
 }

 return 0;
}
