
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mvpp2_tx_queue {int done_pkts_coal; } ;
struct mvpp2_rx_queue {int pkts_coal; int time_coal; } ;
struct mvpp2_port {int nrxqs; int ntxqs; scalar_t__ has_tx_irqs; struct mvpp2_tx_queue** txqs; int tx_time_coal; struct mvpp2_rx_queue** rxqs; } ;
struct ethtool_coalesce {int tx_max_coalesced_frames; int tx_coalesce_usecs; int rx_max_coalesced_frames; int rx_coalesce_usecs; } ;


 int mvpp2_rx_pkts_coal_set (struct mvpp2_port*,struct mvpp2_rx_queue*) ;
 int mvpp2_rx_time_coal_set (struct mvpp2_port*,struct mvpp2_rx_queue*) ;
 int mvpp2_tx_pkts_coal_set (struct mvpp2_port*,struct mvpp2_tx_queue*) ;
 int mvpp2_tx_time_coal_set (struct mvpp2_port*) ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mvpp2_ethtool_set_coalesce(struct net_device *dev,
          struct ethtool_coalesce *c)
{
 struct mvpp2_port *port = netdev_priv(dev);
 int queue;

 for (queue = 0; queue < port->nrxqs; queue++) {
  struct mvpp2_rx_queue *rxq = port->rxqs[queue];

  rxq->time_coal = c->rx_coalesce_usecs;
  rxq->pkts_coal = c->rx_max_coalesced_frames;
  mvpp2_rx_pkts_coal_set(port, rxq);
  mvpp2_rx_time_coal_set(port, rxq);
 }

 if (port->has_tx_irqs) {
  port->tx_time_coal = c->tx_coalesce_usecs;
  mvpp2_tx_time_coal_set(port);
 }

 for (queue = 0; queue < port->ntxqs; queue++) {
  struct mvpp2_tx_queue *txq = port->txqs[queue];

  txq->done_pkts_coal = c->tx_max_coalesced_frames;

  if (port->has_tx_irqs)
   mvpp2_tx_pkts_coal_set(port, txq);
 }

 return 0;
}
