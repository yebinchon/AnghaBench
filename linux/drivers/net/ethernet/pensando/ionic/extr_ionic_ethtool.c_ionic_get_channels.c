
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ionic_lif {int nxqs; TYPE_1__* ionic; } ;
struct ethtool_channels {int combined_count; int max_combined; } ;
struct TYPE_2__ {int ntxqs_per_lif; } ;


 struct ionic_lif* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ionic_get_channels(struct net_device *netdev,
          struct ethtool_channels *ch)
{
 struct ionic_lif *lif = netdev_priv(netdev);


 ch->max_combined = lif->ionic->ntxqs_per_lif;


 ch->combined_count = lif->nxqs;
}
