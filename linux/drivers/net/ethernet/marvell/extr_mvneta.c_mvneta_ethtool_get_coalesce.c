
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mvneta_port {TYPE_1__* txqs; TYPE_2__* rxqs; } ;
struct ethtool_coalesce {int tx_max_coalesced_frames; int rx_max_coalesced_frames; int rx_coalesce_usecs; } ;
struct TYPE_4__ {int pkts_coal; int time_coal; } ;
struct TYPE_3__ {int done_pkts_coal; } ;


 struct mvneta_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mvneta_ethtool_get_coalesce(struct net_device *dev,
           struct ethtool_coalesce *c)
{
 struct mvneta_port *pp = netdev_priv(dev);

 c->rx_coalesce_usecs = pp->rxqs[0].time_coal;
 c->rx_max_coalesced_frames = pp->rxqs[0].pkts_coal;

 c->tx_max_coalesced_frames = pp->txqs[0].done_pkts_coal;
 return 0;
}
