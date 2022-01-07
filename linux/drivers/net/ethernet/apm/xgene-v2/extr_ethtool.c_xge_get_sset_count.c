
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EINVAL ;
 int ETH_SS_STATS ;
 int XGE_EXTD_STATS_LEN ;
 int XGE_STATS_LEN ;

__attribute__((used)) static int xge_get_sset_count(struct net_device *ndev, int sset)
{
 if (sset != ETH_SS_STATS)
  return -EINVAL;

 return XGE_STATS_LEN + XGE_EXTD_STATS_LEN;
}
