
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int DPAA2_ETH_NUM_EXTRA_STATS ;
 int DPAA2_ETH_NUM_STATS ;
 int EOPNOTSUPP ;


__attribute__((used)) static int dpaa2_eth_get_sset_count(struct net_device *net_dev, int sset)
{
 switch (sset) {
 case 128:
  return DPAA2_ETH_NUM_STATS + DPAA2_ETH_NUM_EXTRA_STATS;
 default:
  return -EOPNOTSUPP;
 }
}
