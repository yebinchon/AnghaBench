
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ieee_ets {int ets_cap; int * prio_tc; int tc_tsa; int tc_rx_bw; int tc_tx_bw; scalar_t__ cbs; } ;


 int IEEE_8021QAZ_MAX_TCS ;
 int IEEE_8021QAZ_TSA_STRICT ;
 int memset (int ,int ,int) ;
 int netdev_get_prio_tc_map (struct net_device*,int) ;

__attribute__((used)) static int fm10k_dcbnl_ieee_getets(struct net_device *dev, struct ieee_ets *ets)
{
 int i;


 ets->ets_cap = IEEE_8021QAZ_MAX_TCS;
 ets->cbs = 0;


 memset(ets->tc_tx_bw, 0, sizeof(ets->tc_tx_bw));
 memset(ets->tc_rx_bw, 0, sizeof(ets->tc_rx_bw));
 memset(ets->tc_tsa, IEEE_8021QAZ_TSA_STRICT, sizeof(ets->tc_tsa));


 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++)
  ets->prio_tc[i] = netdev_get_prio_tc_map(dev, i);

 return 0;
}
