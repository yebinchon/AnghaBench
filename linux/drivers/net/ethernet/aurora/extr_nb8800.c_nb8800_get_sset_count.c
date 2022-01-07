
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EOPNOTSUPP ;
 int ETH_SS_STATS ;
 int NB8800_NUM_STATS ;

__attribute__((used)) static int nb8800_get_sset_count(struct net_device *dev, int sset)
{
 if (sset == ETH_SS_STATS)
  return NB8800_NUM_STATS;

 return -EOPNOTSUPP;
}
