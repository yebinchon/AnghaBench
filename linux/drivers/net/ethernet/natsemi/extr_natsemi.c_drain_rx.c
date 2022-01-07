
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdev_private {unsigned int rx_buf_sz; int ** rx_skbuff; int * rx_dma; int pci_dev; TYPE_1__* rx_ring; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int addr; scalar_t__ cmd_status; } ;


 scalar_t__ NATSEMI_PADDING ;
 int PCI_DMA_FROMDEVICE ;
 int RX_RING_SIZE ;
 int cpu_to_le32 (int) ;
 int dev_kfree_skb (int *) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int pci_unmap_single (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static void drain_rx(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);
 unsigned int buflen = np->rx_buf_sz;
 int i;


 for (i = 0; i < RX_RING_SIZE; i++) {
  np->rx_ring[i].cmd_status = 0;
  np->rx_ring[i].addr = cpu_to_le32(0xBADF00D0);
  if (np->rx_skbuff[i]) {
   pci_unmap_single(np->pci_dev, np->rx_dma[i],
    buflen + NATSEMI_PADDING,
    PCI_DMA_FROMDEVICE);
   dev_kfree_skb(np->rx_skbuff[i]);
  }
  np->rx_skbuff[i] = ((void*)0);
 }
}
