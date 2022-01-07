
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct netdev_private {scalar_t__ really_rx_count; TYPE_1__* lack_rxbuf; int rx_buf_sz; int pci_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int status; int buffer; struct sk_buff* skbuff; struct TYPE_2__* next_desc_logical; } ;


 int PCI_DMA_FROMDEVICE ;
 int RXOWN ;
 scalar_t__ RX_RING_SIZE ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int ) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int pci_map_single (int ,int ,int ,int ) ;

__attribute__((used)) static void allocate_rx_buffers(struct net_device *dev)
{
 struct netdev_private *np = netdev_priv(dev);


 while (np->really_rx_count != RX_RING_SIZE) {
  struct sk_buff *skb;

  skb = netdev_alloc_skb(dev, np->rx_buf_sz);
  if (skb == ((void*)0))
   break;

  while (np->lack_rxbuf->skbuff)
   np->lack_rxbuf = np->lack_rxbuf->next_desc_logical;

  np->lack_rxbuf->skbuff = skb;
  np->lack_rxbuf->buffer = pci_map_single(np->pci_dev, skb->data,
   np->rx_buf_sz, PCI_DMA_FROMDEVICE);
  np->lack_rxbuf->status = RXOWN;
  ++np->really_rx_count;
 }
}
