
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_mgmt {int tx_ring; int tx_ring_handle; int dev; int rx_ring; int rx_ring_handle; int rx_list; int tx_list; int irq; int napi; } ;
struct net_device {scalar_t__ phydev; } ;


 int DMA_BIDIRECTIONAL ;
 int OCTEON_MGMT_RX_RING_SIZE ;
 int OCTEON_MGMT_TX_RING_SIZE ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int free_irq (int ,struct net_device*) ;
 int kfree (int ) ;
 int napi_disable (int *) ;
 struct octeon_mgmt* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int octeon_mgmt_reset_hw (struct octeon_mgmt*) ;
 int phy_disconnect (scalar_t__) ;
 int ring_size_to_bytes (int ) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int octeon_mgmt_stop(struct net_device *netdev)
{
 struct octeon_mgmt *p = netdev_priv(netdev);

 napi_disable(&p->napi);
 netif_stop_queue(netdev);

 if (netdev->phydev)
  phy_disconnect(netdev->phydev);

 netif_carrier_off(netdev);

 octeon_mgmt_reset_hw(p);

 free_irq(p->irq, netdev);


 skb_queue_purge(&p->tx_list);
 skb_queue_purge(&p->rx_list);

 dma_unmap_single(p->dev, p->rx_ring_handle,
    ring_size_to_bytes(OCTEON_MGMT_RX_RING_SIZE),
    DMA_BIDIRECTIONAL);
 kfree(p->rx_ring);

 dma_unmap_single(p->dev, p->tx_ring_handle,
    ring_size_to_bytes(OCTEON_MGMT_TX_RING_SIZE),
    DMA_BIDIRECTIONAL);
 kfree(p->tx_ring);

 return 0;
}
