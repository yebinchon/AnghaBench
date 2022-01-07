
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pcnet32_tx_head {int dummy; } ;
struct pcnet32_rx_head {int dummy; } ;
struct pcnet32_private {int tx_ring_size; int rx_ring_size; void* rx_skbuff; void* tx_skbuff; void* rx_dma_addr; void* tx_dma_addr; int * rx_ring; int rx_ring_dma_addr; int pci_dev; int * tx_ring; int tx_ring_dma_addr; } ;
struct net_device {int dummy; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int drv ;
 void* kcalloc (int,int,int ) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int netif_err (struct pcnet32_private*,int ,struct net_device*,char*) ;
 void* pci_alloc_consistent (int ,int,int *) ;

__attribute__((used)) static int pcnet32_alloc_ring(struct net_device *dev, const char *name)
{
 struct pcnet32_private *lp = netdev_priv(dev);

 lp->tx_ring = pci_alloc_consistent(lp->pci_dev,
        sizeof(struct pcnet32_tx_head) *
        lp->tx_ring_size,
        &lp->tx_ring_dma_addr);
 if (lp->tx_ring == ((void*)0)) {
  netif_err(lp, drv, dev, "Consistent memory allocation failed\n");
  return -ENOMEM;
 }

 lp->rx_ring = pci_alloc_consistent(lp->pci_dev,
        sizeof(struct pcnet32_rx_head) *
        lp->rx_ring_size,
        &lp->rx_ring_dma_addr);
 if (lp->rx_ring == ((void*)0)) {
  netif_err(lp, drv, dev, "Consistent memory allocation failed\n");
  return -ENOMEM;
 }

 lp->tx_dma_addr = kcalloc(lp->tx_ring_size, sizeof(dma_addr_t),
      GFP_KERNEL);
 if (!lp->tx_dma_addr)
  return -ENOMEM;

 lp->rx_dma_addr = kcalloc(lp->rx_ring_size, sizeof(dma_addr_t),
      GFP_KERNEL);
 if (!lp->rx_dma_addr)
  return -ENOMEM;

 lp->tx_skbuff = kcalloc(lp->tx_ring_size, sizeof(struct sk_buff *),
    GFP_KERNEL);
 if (!lp->tx_skbuff)
  return -ENOMEM;

 lp->rx_skbuff = kcalloc(lp->rx_ring_size, sizeof(struct sk_buff *),
    GFP_KERNEL);
 if (!lp->rx_skbuff)
  return -ENOMEM;

 return 0;
}
