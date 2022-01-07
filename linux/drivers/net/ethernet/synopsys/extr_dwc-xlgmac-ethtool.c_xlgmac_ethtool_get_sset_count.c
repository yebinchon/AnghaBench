
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EOPNOTSUPP ;

 int XLGMAC_STATS_COUNT ;

__attribute__((used)) static int xlgmac_ethtool_get_sset_count(struct net_device *netdev,
      int stringset)
{
 int ret;

 switch (stringset) {
 case 128:
  ret = XLGMAC_STATS_COUNT;
  break;

 default:
  ret = -EOPNOTSUPP;
 }

 return ret;
}
