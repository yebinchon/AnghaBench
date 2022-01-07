
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct sk_buff {int ip_summed; } ;
struct nx_host_rds_ring {int dma_size; struct netxen_rx_buffer* rx_buf_arr; } ;
struct netxen_rx_buffer {int state; struct sk_buff* skb; int dma; } ;
struct TYPE_4__ {int csummed; } ;
struct netxen_adapter {TYPE_2__ stats; TYPE_1__* netdev; int pdev; } ;
struct TYPE_3__ {int features; } ;


 int CHECKSUM_NONE ;
 int CHECKSUM_UNNECESSARY ;
 int NETIF_F_RXCSUM ;
 int NETXEN_BUFFER_FREE ;
 int PCI_DMA_FROMDEVICE ;
 size_t STATUS_CKSUM_OK ;
 scalar_t__ likely (int) ;
 int pci_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static struct sk_buff *netxen_process_rxbuf(struct netxen_adapter *adapter,
  struct nx_host_rds_ring *rds_ring, u16 index, u16 cksum)
{
 struct netxen_rx_buffer *buffer;
 struct sk_buff *skb;

 buffer = &rds_ring->rx_buf_arr[index];

 pci_unmap_single(adapter->pdev, buffer->dma, rds_ring->dma_size,
   PCI_DMA_FROMDEVICE);

 skb = buffer->skb;
 if (!skb)
  goto no_skb;

 if (likely((adapter->netdev->features & NETIF_F_RXCSUM)
     && cksum == STATUS_CKSUM_OK)) {
  adapter->stats.csummed++;
  skb->ip_summed = CHECKSUM_UNNECESSARY;
 } else
  skb->ip_summed = CHECKSUM_NONE;

 buffer->skb = ((void*)0);
no_skb:
 buffer->state = NETXEN_BUFFER_FREE;
 return skb;
}
