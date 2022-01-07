
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct net_device {int dummy; } ;
struct mvpp2_port {void* tx_ring_size; void* rx_ring_size; } ;
struct ethtool_ringparam {void* tx_pending; void* rx_pending; } ;


 int mvpp2_check_ringparam_valid (struct net_device*,struct ethtool_ringparam*) ;
 int mvpp2_cleanup_rxqs (struct mvpp2_port*) ;
 int mvpp2_cleanup_txqs (struct mvpp2_port*) ;
 int mvpp2_egress_enable (struct mvpp2_port*) ;
 int mvpp2_ingress_enable (struct mvpp2_port*) ;
 int mvpp2_setup_rxqs (struct mvpp2_port*) ;
 int mvpp2_setup_txqs (struct mvpp2_port*) ;
 int mvpp2_start_dev (struct mvpp2_port*) ;
 int mvpp2_stop_dev (struct mvpp2_port*) ;
 int netdev_err (struct net_device*,char*) ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int mvpp2_ethtool_set_ringparam(struct net_device *dev,
           struct ethtool_ringparam *ring)
{
 struct mvpp2_port *port = netdev_priv(dev);
 u16 prev_rx_ring_size = port->rx_ring_size;
 u16 prev_tx_ring_size = port->tx_ring_size;
 int err;

 err = mvpp2_check_ringparam_valid(dev, ring);
 if (err)
  return err;

 if (!netif_running(dev)) {
  port->rx_ring_size = ring->rx_pending;
  port->tx_ring_size = ring->tx_pending;
  return 0;
 }




 mvpp2_stop_dev(port);
 mvpp2_cleanup_rxqs(port);
 mvpp2_cleanup_txqs(port);

 port->rx_ring_size = ring->rx_pending;
 port->tx_ring_size = ring->tx_pending;

 err = mvpp2_setup_rxqs(port);
 if (err) {

  port->rx_ring_size = prev_rx_ring_size;
  ring->rx_pending = prev_rx_ring_size;
  err = mvpp2_setup_rxqs(port);
  if (err)
   goto err_out;
 }
 err = mvpp2_setup_txqs(port);
 if (err) {

  port->tx_ring_size = prev_tx_ring_size;
  ring->tx_pending = prev_tx_ring_size;
  err = mvpp2_setup_txqs(port);
  if (err)
   goto err_clean_rxqs;
 }

 mvpp2_start_dev(port);
 mvpp2_egress_enable(port);
 mvpp2_ingress_enable(port);

 return 0;

err_clean_rxqs:
 mvpp2_cleanup_rxqs(port);
err_out:
 netdev_err(dev, "failed to change ring parameters");
 return err;
}
