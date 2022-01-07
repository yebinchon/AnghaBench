
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mvneta_port {int tx_ring_size; scalar_t__ rx_ring_size; } ;
struct ethtool_ringparam {scalar_t__ rx_pending; int tx_pending; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ MVNETA_MAX_RXD ;
 int MVNETA_MAX_SKB_DESCS ;
 int MVNETA_MAX_TXD ;
 int clamp_t (int ,int ,int,int ) ;
 scalar_t__ mvneta_open (struct net_device*) ;
 int mvneta_stop (struct net_device*) ;
 int netdev_err (struct net_device*,char*) ;
 struct mvneta_port* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int ,int ) ;
 scalar_t__ netif_running (struct net_device*) ;
 int u16 ;

__attribute__((used)) static int mvneta_ethtool_set_ringparam(struct net_device *dev,
     struct ethtool_ringparam *ring)
{
 struct mvneta_port *pp = netdev_priv(dev);

 if ((ring->rx_pending == 0) || (ring->tx_pending == 0))
  return -EINVAL;
 pp->rx_ring_size = ring->rx_pending < MVNETA_MAX_RXD ?
  ring->rx_pending : MVNETA_MAX_RXD;

 pp->tx_ring_size = clamp_t(u16, ring->tx_pending,
       MVNETA_MAX_SKB_DESCS * 2, MVNETA_MAX_TXD);
 if (pp->tx_ring_size != ring->tx_pending)
  netdev_warn(dev, "TX queue size set to %u (requested %u)\n",
       pp->tx_ring_size, ring->tx_pending);

 if (netif_running(dev)) {
  mvneta_stop(dev);
  if (mvneta_open(dev)) {
   netdev_err(dev,
       "error on opening device after ring param change\n");
   return -ENOMEM;
  }
 }

 return 0;
}
