
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct myri10ge_priv {int num_slices; } ;


 int EOPNOTSUPP ;

 int MYRI10GE_MAIN_STATS_LEN ;
 int MYRI10GE_SLICE_STATS_LEN ;
 struct myri10ge_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int myri10ge_get_sset_count(struct net_device *netdev, int sset)
{
 struct myri10ge_priv *mgp = netdev_priv(netdev);

 switch (sset) {
 case 128:
  return MYRI10GE_MAIN_STATS_LEN +
      mgp->num_slices * MYRI10GE_SLICE_STATS_LEN;
 default:
  return -EOPNOTSUPP;
 }
}
