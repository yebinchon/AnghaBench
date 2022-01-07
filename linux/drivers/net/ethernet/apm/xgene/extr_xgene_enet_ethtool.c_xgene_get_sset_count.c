
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EINVAL ;
 int ETH_SS_STATS ;
 int XGENE_EXTD_STATS_LEN ;
 int XGENE_STATS_LEN ;

__attribute__((used)) static int xgene_get_sset_count(struct net_device *ndev, int sset)
{
 if (sset != ETH_SS_STATS)
  return -EINVAL;

 return XGENE_STATS_LEN + XGENE_EXTD_STATS_LEN;
}
