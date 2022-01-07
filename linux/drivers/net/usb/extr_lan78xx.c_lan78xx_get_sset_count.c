
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;
 int ETH_SS_STATS ;
 int lan78xx_gstrings ;

__attribute__((used)) static int lan78xx_get_sset_count(struct net_device *netdev, int sset)
{
 if (sset == ETH_SS_STATS)
  return ARRAY_SIZE(lan78xx_gstrings);
 else
  return -EOPNOTSUPP;
}
