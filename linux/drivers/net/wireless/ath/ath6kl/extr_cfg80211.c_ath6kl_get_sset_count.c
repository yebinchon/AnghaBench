
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 scalar_t__ ATH6KL_STATS_LEN ;
 int EOPNOTSUPP ;
 int ETH_SS_STATS ;

__attribute__((used)) static int ath6kl_get_sset_count(struct net_device *dev, int sset)
{
 int rv = 0;

 if (sset == ETH_SS_STATS)
  rv += ATH6KL_STATS_LEN;

 if (rv == 0)
  return -EOPNOTSUPP;
 return rv;
}
