
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EINVAL ;
 int EMAC_ETHTOOL_STATS_COUNT ;
 int ETH_SS_STATS ;

__attribute__((used)) static int emac_ethtool_get_sset_count(struct net_device *ndev, int stringset)
{
 if (stringset == ETH_SS_STATS)
  return EMAC_ETHTOOL_STATS_COUNT;
 else
  return -EINVAL;
}
