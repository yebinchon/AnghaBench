
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct sk_buff {unsigned int data_len; int data; } ;
struct i40e_tx_desc {void* cmd_type_offset_bsz; void* buffer_addr; } ;
struct i40e_tx_buffer {int tx_flags; struct i40e_tx_desc* next_to_watch; int bytecount; } ;
struct i40e_ring {size_t next_to_use; size_t count; size_t packet_stride; struct i40e_tx_buffer* tx_bi; int dev; int tail; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int * frags; } ;


 int DESC_NEEDED ;
 int DMA_TO_DEVICE ;
 unsigned int I40E_MAX_DATA_PER_TXD ;
 unsigned int I40E_MAX_DATA_PER_TXD_ALIGNED ;
 int I40E_MAX_READ_REQ_SIZE ;
 struct i40e_tx_desc* I40E_TX_DESC (struct i40e_ring*,size_t) ;
 int I40E_TX_DESC_CMD_EOP ;
 int I40E_TX_DESC_CMD_IL2TAG1 ;
 int I40E_TX_DESC_CMD_RS ;
 int I40E_TX_FLAGS_HW_VLAN ;
 int I40E_TX_FLAGS_VLAN_MASK ;
 int I40E_TX_FLAGS_VLAN_SHIFT ;
 size_t WB_STRIDE ;
 void* build_ctob (int,int,unsigned int,int) ;
 void* cpu_to_le64 (int) ;
 int dev_info (int ,char*) ;
 int dma_map_single (int ,int ,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (int ,int) ;
 int dma_unmap_addr_set (struct i40e_tx_buffer*,int,int) ;
 int dma_unmap_len_set (struct i40e_tx_buffer*,int ,unsigned int) ;
 int i40e_maybe_stop_tx (struct i40e_ring*,int ) ;
 int i40e_unmap_and_free_tx_resource (struct i40e_ring*,struct i40e_tx_buffer*) ;
 int len ;
 scalar_t__ likely (int) ;
 int netdev_tx_sent_queue (int ,int ) ;
 int netdev_xmit_more () ;
 scalar_t__ netif_xmit_stopped (int ) ;
 int skb_frag_dma_map (int ,int *,int ,unsigned int,int ) ;
 unsigned int skb_frag_size (int *) ;
 unsigned int skb_headlen (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int txring_txq (struct i40e_ring*) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;
 int writel (size_t,int ) ;

__attribute__((used)) static inline int i40e_tx_map(struct i40e_ring *tx_ring, struct sk_buff *skb,
         struct i40e_tx_buffer *first, u32 tx_flags,
         const u8 hdr_len, u32 td_cmd, u32 td_offset)
{
 unsigned int data_len = skb->data_len;
 unsigned int size = skb_headlen(skb);
 skb_frag_t *frag;
 struct i40e_tx_buffer *tx_bi;
 struct i40e_tx_desc *tx_desc;
 u16 i = tx_ring->next_to_use;
 u32 td_tag = 0;
 dma_addr_t dma;
 u16 desc_count = 1;

 if (tx_flags & I40E_TX_FLAGS_HW_VLAN) {
  td_cmd |= I40E_TX_DESC_CMD_IL2TAG1;
  td_tag = (tx_flags & I40E_TX_FLAGS_VLAN_MASK) >>
    I40E_TX_FLAGS_VLAN_SHIFT;
 }

 first->tx_flags = tx_flags;

 dma = dma_map_single(tx_ring->dev, skb->data, size, DMA_TO_DEVICE);

 tx_desc = I40E_TX_DESC(tx_ring, i);
 tx_bi = first;

 for (frag = &skb_shinfo(skb)->frags[0];; frag++) {
  unsigned int max_data = I40E_MAX_DATA_PER_TXD_ALIGNED;

  if (dma_mapping_error(tx_ring->dev, dma))
   goto dma_error;


  dma_unmap_len_set(tx_bi, len, size);
  dma_unmap_addr_set(tx_bi, dma, dma);


  max_data += -dma & (I40E_MAX_READ_REQ_SIZE - 1);
  tx_desc->buffer_addr = cpu_to_le64(dma);

  while (unlikely(size > I40E_MAX_DATA_PER_TXD)) {
   tx_desc->cmd_type_offset_bsz =
    build_ctob(td_cmd, td_offset,
        max_data, td_tag);

   tx_desc++;
   i++;
   desc_count++;

   if (i == tx_ring->count) {
    tx_desc = I40E_TX_DESC(tx_ring, 0);
    i = 0;
   }

   dma += max_data;
   size -= max_data;

   max_data = I40E_MAX_DATA_PER_TXD_ALIGNED;
   tx_desc->buffer_addr = cpu_to_le64(dma);
  }

  if (likely(!data_len))
   break;

  tx_desc->cmd_type_offset_bsz = build_ctob(td_cmd, td_offset,
         size, td_tag);

  tx_desc++;
  i++;
  desc_count++;

  if (i == tx_ring->count) {
   tx_desc = I40E_TX_DESC(tx_ring, 0);
   i = 0;
  }

  size = skb_frag_size(frag);
  data_len -= size;

  dma = skb_frag_dma_map(tx_ring->dev, frag, 0, size,
           DMA_TO_DEVICE);

  tx_bi = &tx_ring->tx_bi[i];
 }

 netdev_tx_sent_queue(txring_txq(tx_ring), first->bytecount);

 i++;
 if (i == tx_ring->count)
  i = 0;

 tx_ring->next_to_use = i;

 i40e_maybe_stop_tx(tx_ring, DESC_NEEDED);


 td_cmd |= I40E_TX_DESC_CMD_EOP;




 desc_count |= ++tx_ring->packet_stride;

 if (desc_count >= WB_STRIDE) {

  td_cmd |= I40E_TX_DESC_CMD_RS;
  tx_ring->packet_stride = 0;
 }

 tx_desc->cmd_type_offset_bsz =
   build_ctob(td_cmd, td_offset, size, td_tag);

 skb_tx_timestamp(skb);







 wmb();


 first->next_to_watch = tx_desc;


 if (netif_xmit_stopped(txring_txq(tx_ring)) || !netdev_xmit_more()) {
  writel(i, tx_ring->tail);
 }

 return 0;

dma_error:
 dev_info(tx_ring->dev, "TX DMA map failed\n");


 for (;;) {
  tx_bi = &tx_ring->tx_bi[i];
  i40e_unmap_and_free_tx_resource(tx_ring, tx_bi);
  if (tx_bi == first)
   break;
  if (i == 0)
   i = tx_ring->count;
  i--;
 }

 tx_ring->next_to_use = i;

 return -1;
}
