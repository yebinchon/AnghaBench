
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {int napi_tx; int napi_rx; } ;
struct net_device {int dummy; } ;


 int free_irq (int ,struct rocker_port*) ;
 int napi_disable (int *) ;
 struct rocker_port* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int rocker_msix_rx_vector (struct rocker_port*) ;
 int rocker_msix_tx_vector (struct rocker_port*) ;
 int rocker_port_dma_rings_fini (struct rocker_port*) ;
 int rocker_port_set_enable (struct rocker_port*,int) ;
 int rocker_world_port_stop (struct rocker_port*) ;

__attribute__((used)) static int rocker_port_stop(struct net_device *dev)
{
 struct rocker_port *rocker_port = netdev_priv(dev);

 netif_stop_queue(dev);
 rocker_port_set_enable(rocker_port, 0);
 napi_disable(&rocker_port->napi_rx);
 napi_disable(&rocker_port->napi_tx);
 rocker_world_port_stop(rocker_port);
 free_irq(rocker_msix_rx_vector(rocker_port), rocker_port);
 free_irq(rocker_msix_tx_vector(rocker_port), rocker_port);
 rocker_port_dma_rings_fini(rocker_port);

 return 0;
}
