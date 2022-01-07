
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mvpp2_port {int tx_time_coal; TYPE_1__** txqs; TYPE_2__** rxqs; } ;
struct ethtool_coalesce {int tx_coalesce_usecs; int tx_max_coalesced_frames; int rx_max_coalesced_frames; int rx_coalesce_usecs; } ;
struct TYPE_4__ {int pkts_coal; int time_coal; } ;
struct TYPE_3__ {int done_pkts_coal; } ;


 struct mvpp2_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mvpp2_ethtool_get_coalesce(struct net_device *dev,
          struct ethtool_coalesce *c)
{
 struct mvpp2_port *port = netdev_priv(dev);

 c->rx_coalesce_usecs = port->rxqs[0]->time_coal;
 c->rx_max_coalesced_frames = port->rxqs[0]->pkts_coal;
 c->tx_max_coalesced_frames = port->txqs[0]->done_pkts_coal;
 c->tx_coalesce_usecs = port->tx_time_coal;
 return 0;
}
