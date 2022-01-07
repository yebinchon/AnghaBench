
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tulip_tx_desc {int dummy; } ;
struct tulip_rx_desc {int dummy; } ;
struct tulip_private {int rx_ring_dma; unsigned int dirty_rx; int tx_ring_dma; TYPE_4__* tx_ring; TYPE_3__* tx_buffers; TYPE_2__* rx_ring; TYPE_1__* rx_buffers; int pdev; scalar_t__ nir; scalar_t__ ttimer; scalar_t__ susp_rx; } ;
struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_8__ {int status; void* buffer2; } ;
struct TYPE_7__ {scalar_t__ mapping; int * skb; } ;
struct TYPE_6__ {int status; void* buffer1; void* buffer2; void* length; } ;
struct TYPE_5__ {int mapping; struct sk_buff* skb; } ;


 int DESC_RING_WRAP ;
 int DescOwned ;
 int PCI_DMA_FROMDEVICE ;
 int PKT_BUF_SZ ;
 int RX_RING_SIZE ;
 int TX_RING_SIZE ;
 void* cpu_to_le32 (int) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 struct tulip_private* netdev_priv (struct net_device*) ;
 int pci_map_single (int ,int ,int,int ) ;

__attribute__((used)) static void tulip_init_ring(struct net_device *dev)
{
 struct tulip_private *tp = netdev_priv(dev);
 int i;

 tp->susp_rx = 0;
 tp->ttimer = 0;
 tp->nir = 0;

 for (i = 0; i < RX_RING_SIZE; i++) {
  tp->rx_ring[i].status = 0x00000000;
  tp->rx_ring[i].length = cpu_to_le32(PKT_BUF_SZ);
  tp->rx_ring[i].buffer2 = cpu_to_le32(tp->rx_ring_dma + sizeof(struct tulip_rx_desc) * (i + 1));
  tp->rx_buffers[i].skb = ((void*)0);
  tp->rx_buffers[i].mapping = 0;
 }

 tp->rx_ring[i-1].length = cpu_to_le32(PKT_BUF_SZ | DESC_RING_WRAP);
 tp->rx_ring[i-1].buffer2 = cpu_to_le32(tp->rx_ring_dma);

 for (i = 0; i < RX_RING_SIZE; i++) {
  dma_addr_t mapping;




  struct sk_buff *skb = netdev_alloc_skb(dev, PKT_BUF_SZ);
  tp->rx_buffers[i].skb = skb;
  if (skb == ((void*)0))
   break;
  mapping = pci_map_single(tp->pdev, skb->data,
      PKT_BUF_SZ, PCI_DMA_FROMDEVICE);
  tp->rx_buffers[i].mapping = mapping;
  tp->rx_ring[i].status = cpu_to_le32(DescOwned);
  tp->rx_ring[i].buffer1 = cpu_to_le32(mapping);
 }
 tp->dirty_rx = (unsigned int)(i - RX_RING_SIZE);



 for (i = 0; i < TX_RING_SIZE; i++) {
  tp->tx_buffers[i].skb = ((void*)0);
  tp->tx_buffers[i].mapping = 0;
  tp->tx_ring[i].status = 0x00000000;
  tp->tx_ring[i].buffer2 = cpu_to_le32(tp->tx_ring_dma + sizeof(struct tulip_tx_desc) * (i + 1));
 }
 tp->tx_ring[i-1].buffer2 = cpu_to_le32(tp->tx_ring_dma);
}
