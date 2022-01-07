
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {int napi_rx; int napi_tx; int dev; } ;
struct net_device {int proto_down; } ;


 int free_irq (int ,struct rocker_port*) ;
 int napi_enable (int *) ;
 int netdev_err (int ,char*) ;
 struct rocker_port* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct rocker_port*) ;
 int rocker_driver_name ;
 int rocker_msix_rx_vector (struct rocker_port*) ;
 int rocker_msix_tx_vector (struct rocker_port*) ;
 int rocker_port_dma_rings_fini (struct rocker_port*) ;
 int rocker_port_dma_rings_init (struct rocker_port*) ;
 int rocker_port_set_enable (struct rocker_port*,int) ;
 int rocker_rx_irq_handler ;
 int rocker_tx_irq_handler ;
 int rocker_world_port_open (struct rocker_port*) ;

__attribute__((used)) static int rocker_port_open(struct net_device *dev)
{
 struct rocker_port *rocker_port = netdev_priv(dev);
 int err;

 err = rocker_port_dma_rings_init(rocker_port);
 if (err)
  return err;

 err = request_irq(rocker_msix_tx_vector(rocker_port),
     rocker_tx_irq_handler, 0,
     rocker_driver_name, rocker_port);
 if (err) {
  netdev_err(rocker_port->dev, "cannot assign tx irq\n");
  goto err_request_tx_irq;
 }

 err = request_irq(rocker_msix_rx_vector(rocker_port),
     rocker_rx_irq_handler, 0,
     rocker_driver_name, rocker_port);
 if (err) {
  netdev_err(rocker_port->dev, "cannot assign rx irq\n");
  goto err_request_rx_irq;
 }

 err = rocker_world_port_open(rocker_port);
 if (err) {
  netdev_err(rocker_port->dev, "cannot open port in world\n");
  goto err_world_port_open;
 }

 napi_enable(&rocker_port->napi_tx);
 napi_enable(&rocker_port->napi_rx);
 if (!dev->proto_down)
  rocker_port_set_enable(rocker_port, 1);
 netif_start_queue(dev);
 return 0;

err_world_port_open:
 free_irq(rocker_msix_rx_vector(rocker_port), rocker_port);
err_request_rx_irq:
 free_irq(rocker_msix_tx_vector(rocker_port), rocker_port);
err_request_tx_irq:
 rocker_port_dma_rings_fini(rocker_port);
 return err;
}
