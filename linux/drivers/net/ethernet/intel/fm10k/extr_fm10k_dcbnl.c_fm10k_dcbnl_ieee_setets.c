
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ieee_ets {scalar_t__* tc_tsa; int* prio_tc; scalar_t__* tc_rx_bw; scalar_t__* tc_tx_bw; } ;


 int EINVAL ;
 int IEEE_8021QAZ_MAX_TCS ;
 scalar_t__ IEEE_8021QAZ_TSA_STRICT ;
 int fm10k_setup_tc (struct net_device*,int) ;
 int netdev_get_num_tc (struct net_device*) ;
 int netdev_set_prio_tc_map (struct net_device*,int,int) ;

__attribute__((used)) static int fm10k_dcbnl_ieee_setets(struct net_device *dev, struct ieee_ets *ets)
{
 u8 num_tc = 0;
 int i;


 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
  if (ets->tc_tx_bw[i] || ets->tc_rx_bw[i])
   return -EINVAL;
  if (ets->tc_tsa[i] != IEEE_8021QAZ_TSA_STRICT)
   return -EINVAL;
  if (ets->prio_tc[i] > num_tc)
   num_tc = ets->prio_tc[i];
 }


 if (num_tc)
  num_tc++;

 if (num_tc > IEEE_8021QAZ_MAX_TCS)
  return -EINVAL;


 if (num_tc != netdev_get_num_tc(dev)) {
  int err = fm10k_setup_tc(dev, num_tc);
  if (err)
   return err;
 }


 for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++)
  netdev_set_prio_tc_map(dev, i, ets->prio_tc[i]);

 return 0;
}
