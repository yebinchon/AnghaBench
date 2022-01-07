
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_port {int tx_ring; int rx_ring; int dev; int port_number; struct rocker* rocker; } ;
struct rocker {int dummy; } ;


 int PCI_DMA_BIDIRECTIONAL ;
 int PCI_DMA_TODEVICE ;
 int ROCKER_DMA_RX (int ) ;
 int ROCKER_DMA_RX_DEFAULT_SIZE ;
 int ROCKER_DMA_RX_DESC_SIZE ;
 int ROCKER_DMA_TX (int ) ;
 int ROCKER_DMA_TX_DEFAULT_SIZE ;
 int ROCKER_DMA_TX_DESC_SIZE ;
 int netdev_err (int ,char*) ;
 int rocker_dma_ring_bufs_alloc (struct rocker*,int *,int ,int ) ;
 int rocker_dma_ring_bufs_free (struct rocker*,int *,int ) ;
 int rocker_dma_ring_create (struct rocker*,int ,int ,int *) ;
 int rocker_dma_ring_destroy (struct rocker*,int *) ;
 int rocker_dma_ring_pass_to_producer (struct rocker*,int *) ;
 int rocker_dma_rx_ring_skbs_alloc (struct rocker_port*) ;

__attribute__((used)) static int rocker_port_dma_rings_init(struct rocker_port *rocker_port)
{
 struct rocker *rocker = rocker_port->rocker;
 int err;

 err = rocker_dma_ring_create(rocker,
         ROCKER_DMA_TX(rocker_port->port_number),
         ROCKER_DMA_TX_DEFAULT_SIZE,
         &rocker_port->tx_ring);
 if (err) {
  netdev_err(rocker_port->dev, "failed to create tx dma ring\n");
  return err;
 }

 err = rocker_dma_ring_bufs_alloc(rocker, &rocker_port->tx_ring,
      PCI_DMA_TODEVICE,
      ROCKER_DMA_TX_DESC_SIZE);
 if (err) {
  netdev_err(rocker_port->dev, "failed to alloc tx dma ring buffers\n");
  goto err_dma_tx_ring_bufs_alloc;
 }

 err = rocker_dma_ring_create(rocker,
         ROCKER_DMA_RX(rocker_port->port_number),
         ROCKER_DMA_RX_DEFAULT_SIZE,
         &rocker_port->rx_ring);
 if (err) {
  netdev_err(rocker_port->dev, "failed to create rx dma ring\n");
  goto err_dma_rx_ring_create;
 }

 err = rocker_dma_ring_bufs_alloc(rocker, &rocker_port->rx_ring,
      PCI_DMA_BIDIRECTIONAL,
      ROCKER_DMA_RX_DESC_SIZE);
 if (err) {
  netdev_err(rocker_port->dev, "failed to alloc rx dma ring buffers\n");
  goto err_dma_rx_ring_bufs_alloc;
 }

 err = rocker_dma_rx_ring_skbs_alloc(rocker_port);
 if (err) {
  netdev_err(rocker_port->dev, "failed to alloc rx dma ring skbs\n");
  goto err_dma_rx_ring_skbs_alloc;
 }
 rocker_dma_ring_pass_to_producer(rocker, &rocker_port->rx_ring);

 return 0;

err_dma_rx_ring_skbs_alloc:
 rocker_dma_ring_bufs_free(rocker, &rocker_port->rx_ring,
      PCI_DMA_BIDIRECTIONAL);
err_dma_rx_ring_bufs_alloc:
 rocker_dma_ring_destroy(rocker, &rocker_port->rx_ring);
err_dma_rx_ring_create:
 rocker_dma_ring_bufs_free(rocker, &rocker_port->tx_ring,
      PCI_DMA_TODEVICE);
err_dma_tx_ring_bufs_alloc:
 rocker_dma_ring_destroy(rocker, &rocker_port->tx_ring);
 return err;
}
