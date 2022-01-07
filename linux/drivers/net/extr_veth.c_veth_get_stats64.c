
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_rq_stats {scalar_t__ xdp_packets; scalar_t__ xdp_bytes; int xdp_drops; } ;
struct veth_priv {int peer; } ;
struct rtnl_link_stats64 {scalar_t__ tx_packets; scalar_t__ tx_bytes; scalar_t__ rx_packets; scalar_t__ rx_bytes; int rx_dropped; scalar_t__ tx_dropped; } ;
struct pcpu_lstats {scalar_t__ packets; scalar_t__ bytes; } ;
struct net_device {int dummy; } ;


 struct veth_priv* netdev_priv (struct net_device*) ;
 struct net_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int veth_stats_rx (struct veth_rq_stats*,struct net_device*) ;
 scalar_t__ veth_stats_tx (struct pcpu_lstats*,struct net_device*) ;

__attribute__((used)) static void veth_get_stats64(struct net_device *dev,
        struct rtnl_link_stats64 *tot)
{
 struct veth_priv *priv = netdev_priv(dev);
 struct net_device *peer;
 struct veth_rq_stats rx;
 struct pcpu_lstats tx;

 tot->tx_dropped = veth_stats_tx(&tx, dev);
 tot->tx_bytes = tx.bytes;
 tot->tx_packets = tx.packets;

 veth_stats_rx(&rx, dev);
 tot->rx_dropped = rx.xdp_drops;
 tot->rx_bytes = rx.xdp_bytes;
 tot->rx_packets = rx.xdp_packets;

 rcu_read_lock();
 peer = rcu_dereference(priv->peer);
 if (peer) {
  tot->rx_dropped += veth_stats_tx(&tx, peer);
  tot->rx_bytes += tx.bytes;
  tot->rx_packets += tx.packets;

  veth_stats_rx(&rx, peer);
  tot->tx_bytes += rx.xdp_bytes;
  tot->tx_packets += rx.xdp_packets;
 }
 rcu_read_unlock();
}
