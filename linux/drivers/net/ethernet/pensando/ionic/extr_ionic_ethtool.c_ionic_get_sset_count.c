
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ionic_lif {int dummy; } ;




 int PRIV_FLAGS_COUNT ;
 int ionic_get_stats_count (struct ionic_lif*) ;
 struct ionic_lif* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ionic_get_sset_count(struct net_device *netdev, int sset)
{
 struct ionic_lif *lif = netdev_priv(netdev);
 int count = 0;

 switch (sset) {
 case 128:
  count = ionic_get_stats_count(lif);
  break;
 case 129:
  count = PRIV_FLAGS_COUNT;
  break;
 }
 return count;
}
