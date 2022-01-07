
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int EOPNOTSUPP ;
 int ETH_SS_STATS ;
 int mv643xx_eth_stats ;

__attribute__((used)) static int mv643xx_eth_get_sset_count(struct net_device *dev, int sset)
{
 if (sset == ETH_SS_STATS)
  return ARRAY_SIZE(mv643xx_eth_stats);

 return -EOPNOTSUPP;
}
