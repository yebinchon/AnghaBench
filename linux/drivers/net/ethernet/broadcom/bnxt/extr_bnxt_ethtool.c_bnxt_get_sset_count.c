
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnxt {int num_tests; } ;


 int EOPNOTSUPP ;


 int bnxt_get_num_stats (struct bnxt*) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_get_sset_count(struct net_device *dev, int sset)
{
 struct bnxt *bp = netdev_priv(dev);

 switch (sset) {
 case 129:
  return bnxt_get_num_stats(bp);
 case 128:
  if (!bp->num_tests)
   return -EOPNOTSUPP;
  return bp->num_tests;
 default:
  return -EOPNOTSUPP;
 }
}
