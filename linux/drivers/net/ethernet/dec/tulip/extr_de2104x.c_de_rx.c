
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ len; int protocol; int data; } ;
struct de_private {unsigned int rx_tail; int rx_buf_sz; TYPE_4__* dev; TYPE_3__* rx_ring; int pdev; TYPE_1__* rx_skb; } ;
typedef int dma_addr_t ;
struct TYPE_9__ {int rx_bytes; int rx_packets; int rx_dropped; } ;
struct TYPE_11__ {TYPE_2__ stats; } ;
struct TYPE_10__ {void* opts1; void* addr1; void* opts2; } ;
struct TYPE_8__ {int mapping; struct sk_buff* skb; } ;


 int BUG_ON (int) ;
 int DE_RX_RING_SIZE ;
 int DescOwn ;
 int NET_RX_DROP ;
 unsigned int NEXT_RX (unsigned int) ;
 int PCI_DMA_FROMDEVICE ;
 int RX_OFFSET ;
 int RingEnd ;
 void* cpu_to_le32 (int) ;
 int de_rx_err_acct (struct de_private*,unsigned int,int,int) ;
 int eth_type_trans (struct sk_buff*,TYPE_4__*) ;
 int le32_to_cpu (void*) ;
 struct sk_buff* netdev_alloc_skb (TYPE_4__*,unsigned int) ;
 int netdev_warn (TYPE_4__*,char*) ;
 int netif_dbg (struct de_private*,int ,TYPE_4__*,char*,unsigned int,int,int,unsigned int) ;
 int netif_rx (struct sk_buff*) ;
 int pci_dma_sync_single_for_cpu (int ,int,int,int ) ;
 int pci_dma_sync_single_for_device (int ,int,int,int ) ;
 int pci_map_single (int ,int ,unsigned int,int ) ;
 int pci_unmap_single (int ,int,unsigned int,int ) ;
 int rmb () ;
 int rx_copybreak ;
 int rx_status ;
 int skb_copy_from_linear_data (struct sk_buff*,int ,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static void de_rx (struct de_private *de)
{
 unsigned rx_tail = de->rx_tail;
 unsigned rx_work = DE_RX_RING_SIZE;
 unsigned drop = 0;
 int rc;

 while (--rx_work) {
  u32 status, len;
  dma_addr_t mapping;
  struct sk_buff *skb, *copy_skb;
  unsigned copying_skb, buflen;

  skb = de->rx_skb[rx_tail].skb;
  BUG_ON(!skb);
  rmb();
  status = le32_to_cpu(de->rx_ring[rx_tail].opts1);
  if (status & DescOwn)
   break;

  len = ((status >> 16) & 0x7ff) - 4;
  mapping = de->rx_skb[rx_tail].mapping;

  if (unlikely(drop)) {
   de->dev->stats.rx_dropped++;
   goto rx_next;
  }

  if (unlikely((status & 0x38008300) != 0x0300)) {
   de_rx_err_acct(de, rx_tail, status, len);
   goto rx_next;
  }

  copying_skb = (len <= rx_copybreak);

  netif_dbg(de, rx_status, de->dev,
     "rx slot %d status 0x%x len %d copying? %d\n",
     rx_tail, status, len, copying_skb);

  buflen = copying_skb ? (len + RX_OFFSET) : de->rx_buf_sz;
  copy_skb = netdev_alloc_skb(de->dev, buflen);
  if (unlikely(!copy_skb)) {
   de->dev->stats.rx_dropped++;
   drop = 1;
   rx_work = 100;
   goto rx_next;
  }

  if (!copying_skb) {
   pci_unmap_single(de->pdev, mapping,
      buflen, PCI_DMA_FROMDEVICE);
   skb_put(skb, len);

   mapping =
   de->rx_skb[rx_tail].mapping =
    pci_map_single(de->pdev, copy_skb->data,
            buflen, PCI_DMA_FROMDEVICE);
   de->rx_skb[rx_tail].skb = copy_skb;
  } else {
   pci_dma_sync_single_for_cpu(de->pdev, mapping, len, PCI_DMA_FROMDEVICE);
   skb_reserve(copy_skb, RX_OFFSET);
   skb_copy_from_linear_data(skb, skb_put(copy_skb, len),
        len);
   pci_dma_sync_single_for_device(de->pdev, mapping, len, PCI_DMA_FROMDEVICE);


   skb = copy_skb;
  }

  skb->protocol = eth_type_trans (skb, de->dev);

  de->dev->stats.rx_packets++;
  de->dev->stats.rx_bytes += skb->len;
  rc = netif_rx (skb);
  if (rc == NET_RX_DROP)
   drop = 1;

rx_next:
  if (rx_tail == (DE_RX_RING_SIZE - 1))
   de->rx_ring[rx_tail].opts2 =
    cpu_to_le32(RingEnd | de->rx_buf_sz);
  else
   de->rx_ring[rx_tail].opts2 = cpu_to_le32(de->rx_buf_sz);
  de->rx_ring[rx_tail].addr1 = cpu_to_le32(mapping);
  wmb();
  de->rx_ring[rx_tail].opts1 = cpu_to_le32(DescOwn);
  rx_tail = NEXT_RX(rx_tail);
 }

 if (!rx_work)
  netdev_warn(de->dev, "rx work limit reached\n");

 de->rx_tail = rx_tail;
}
