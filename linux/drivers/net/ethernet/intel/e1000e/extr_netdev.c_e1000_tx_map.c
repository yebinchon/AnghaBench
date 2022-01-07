
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct pci_dev {int dev; } ;
struct e1000_ring {unsigned int next_to_use; unsigned int count; struct e1000_buffer* buffer_info; struct e1000_adapter* adapter; } ;
struct e1000_buffer {unsigned int length; unsigned int next_to_watch; int mapped_as_page; unsigned int segs; unsigned int bytecount; scalar_t__ dma; struct sk_buff* skb; void* time_stamp; } ;
struct e1000_adapter {struct pci_dev* pdev; } ;
typedef int skb_frag_t ;
struct TYPE_2__ {scalar_t__ gso_segs; int * frags; } ;


 int DMA_TO_DEVICE ;
 int dev_err (int *,char*) ;
 scalar_t__ dma_map_single (int *,scalar_t__,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (int *,scalar_t__) ;
 int e1000_put_txbuf (struct e1000_ring*,struct e1000_buffer*,int) ;
 void* jiffies ;
 unsigned int min (unsigned int,unsigned int) ;
 scalar_t__ skb_frag_dma_map (int *,int const*,unsigned int,unsigned int,int ) ;
 unsigned int skb_frag_size (int const*) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int e1000_tx_map(struct e1000_ring *tx_ring, struct sk_buff *skb,
   unsigned int first, unsigned int max_per_txd,
   unsigned int nr_frags)
{
 struct e1000_adapter *adapter = tx_ring->adapter;
 struct pci_dev *pdev = adapter->pdev;
 struct e1000_buffer *buffer_info;
 unsigned int len = skb_headlen(skb);
 unsigned int offset = 0, size, count = 0, i;
 unsigned int f, bytecount, segs;

 i = tx_ring->next_to_use;

 while (len) {
  buffer_info = &tx_ring->buffer_info[i];
  size = min(len, max_per_txd);

  buffer_info->length = size;
  buffer_info->time_stamp = jiffies;
  buffer_info->next_to_watch = i;
  buffer_info->dma = dma_map_single(&pdev->dev,
        skb->data + offset,
        size, DMA_TO_DEVICE);
  buffer_info->mapped_as_page = 0;
  if (dma_mapping_error(&pdev->dev, buffer_info->dma))
   goto dma_error;

  len -= size;
  offset += size;
  count++;

  if (len) {
   i++;
   if (i == tx_ring->count)
    i = 0;
  }
 }

 for (f = 0; f < nr_frags; f++) {
  const skb_frag_t *frag = &skb_shinfo(skb)->frags[f];

  len = skb_frag_size(frag);
  offset = 0;

  while (len) {
   i++;
   if (i == tx_ring->count)
    i = 0;

   buffer_info = &tx_ring->buffer_info[i];
   size = min(len, max_per_txd);

   buffer_info->length = size;
   buffer_info->time_stamp = jiffies;
   buffer_info->next_to_watch = i;
   buffer_info->dma = skb_frag_dma_map(&pdev->dev, frag,
           offset, size,
           DMA_TO_DEVICE);
   buffer_info->mapped_as_page = 1;
   if (dma_mapping_error(&pdev->dev, buffer_info->dma))
    goto dma_error;

   len -= size;
   offset += size;
   count++;
  }
 }

 segs = skb_shinfo(skb)->gso_segs ? : 1;

 bytecount = ((segs - 1) * skb_headlen(skb)) + skb->len;

 tx_ring->buffer_info[i].skb = skb;
 tx_ring->buffer_info[i].segs = segs;
 tx_ring->buffer_info[i].bytecount = bytecount;
 tx_ring->buffer_info[first].next_to_watch = i;

 return count;

dma_error:
 dev_err(&pdev->dev, "Tx DMA map failed\n");
 buffer_info->dma = 0;
 if (count)
  count--;

 while (count--) {
  if (i == 0)
   i += tx_ring->count;
  i--;
  buffer_info = &tx_ring->buffer_info[i];
  e1000_put_txbuf(tx_ring, buffer_info, 1);
 }

 return 0;
}
