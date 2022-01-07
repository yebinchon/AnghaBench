
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct sk_buff {int * data_len; struct ena_rx_buffer* len; int protocol; } ;
struct ena_rx_buffer {int page_offset; int * page; int ena_buf; } ;
struct ena_ring {size_t rx_copybreak; size_t* free_ids; struct ena_rx_buffer* rx_buffer_info; int ring_size; int netdev; int adapter; int dev; } ;
struct ena_com_rx_buf_info {size_t len; size_t req_id; } ;
struct TYPE_2__ {int nr_frags; } ;


 int DMA_FROM_DEVICE ;
 int ENA_PAGE_SIZE ;
 size_t ENA_RX_RING_IDX_ADD (size_t,scalar_t__,int ) ;
 size_t ENA_RX_RING_IDX_NEXT (size_t,int ) ;
 int NET_IP_ALIGN ;
 int dma_sync_single_for_cpu (int ,int ,size_t,int ) ;
 int dma_sync_single_for_device (int ,int ,size_t,int ) ;
 int dma_unmap_addr (int *,int ) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 struct sk_buff* ena_alloc_skb (struct ena_ring*,int) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 scalar_t__ likely (int) ;
 int netif_dbg (int ,int ,int ,char*,struct ena_rx_buffer*,int *) ;
 int netif_err (int ,int ,int ,char*) ;
 int paddr ;
 void* page_address (int *) ;
 int prefetch (void*) ;
 int rx_err ;
 int rx_status ;
 int skb_add_rx_frag (struct sk_buff*,int ,int *,int,size_t,int ) ;
 int skb_copy_to_linear_data (struct sk_buff*,void*,size_t) ;
 int skb_put (struct sk_buff*,size_t) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *ena_rx_skb(struct ena_ring *rx_ring,
      struct ena_com_rx_buf_info *ena_bufs,
      u32 descs,
      u16 *next_to_clean)
{
 struct sk_buff *skb;
 struct ena_rx_buffer *rx_info;
 u16 len, req_id, buf = 0;
 void *va;

 len = ena_bufs[buf].len;
 req_id = ena_bufs[buf].req_id;
 rx_info = &rx_ring->rx_buffer_info[req_id];

 if (unlikely(!rx_info->page)) {
  netif_err(rx_ring->adapter, rx_err, rx_ring->netdev,
     "Page is NULL\n");
  return ((void*)0);
 }

 netif_dbg(rx_ring->adapter, rx_status, rx_ring->netdev,
    "rx_info %p page %p\n",
    rx_info, rx_info->page);


 va = page_address(rx_info->page) + rx_info->page_offset;
 prefetch(va + NET_IP_ALIGN);

 if (len <= rx_ring->rx_copybreak) {
  skb = ena_alloc_skb(rx_ring, 0);
  if (unlikely(!skb))
   return ((void*)0);

  netif_dbg(rx_ring->adapter, rx_status, rx_ring->netdev,
     "rx allocated small packet. len %d. data_len %d\n",
     skb->len, skb->data_len);


  dma_sync_single_for_cpu(rx_ring->dev,
     dma_unmap_addr(&rx_info->ena_buf, paddr),
     len,
     DMA_FROM_DEVICE);
  skb_copy_to_linear_data(skb, va, len);
  dma_sync_single_for_device(rx_ring->dev,
        dma_unmap_addr(&rx_info->ena_buf, paddr),
        len,
        DMA_FROM_DEVICE);

  skb_put(skb, len);
  skb->protocol = eth_type_trans(skb, rx_ring->netdev);
  rx_ring->free_ids[*next_to_clean] = req_id;
  *next_to_clean = ENA_RX_RING_IDX_ADD(*next_to_clean, descs,
           rx_ring->ring_size);
  return skb;
 }

 skb = ena_alloc_skb(rx_ring, 1);
 if (unlikely(!skb))
  return ((void*)0);

 do {
  dma_unmap_page(rx_ring->dev,
          dma_unmap_addr(&rx_info->ena_buf, paddr),
          ENA_PAGE_SIZE, DMA_FROM_DEVICE);

  skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_info->page,
    rx_info->page_offset, len, ENA_PAGE_SIZE);

  netif_dbg(rx_ring->adapter, rx_status, rx_ring->netdev,
     "rx skb updated. len %d. data_len %d\n",
     skb->len, skb->data_len);

  rx_info->page = ((void*)0);

  rx_ring->free_ids[*next_to_clean] = req_id;
  *next_to_clean =
   ENA_RX_RING_IDX_NEXT(*next_to_clean,
          rx_ring->ring_size);
  if (likely(--descs == 0))
   break;

  buf++;
  len = ena_bufs[buf].len;
  req_id = ena_bufs[buf].req_id;
  rx_info = &rx_ring->rx_buffer_info[req_id];
 } while (1);

 return skb;
}
