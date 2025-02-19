
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tx_queue {scalar_t__ tx_curr_desc; scalar_t__ tx_ring_size; void** tx_desc_mapping; scalar_t__ tso_hdrs_dma; scalar_t__ tso_hdrs; struct tx_desc* tx_desc_area; } ;
struct tx_desc {int byte_cnt; int cmd_sts; scalar_t__ buf_ptr; scalar_t__ l4i_chk; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;


 int BUFFER_OWNED_BY_DMA ;
 void* DESC_DMA_MAP_SINGLE ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int TSO_HEADER_SIZE ;
 int TX_ENABLE_INTERRUPT ;
 int TX_LAST_DESC ;
 int WARN (int,char*) ;
 int ZERO_PADDING ;
 scalar_t__ dma_map_single (int ,char*,int,int ) ;
 int dma_mapping_error (int ,scalar_t__) ;
 int memcpy (scalar_t__,char*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int
txq_put_data_tso(struct net_device *dev, struct tx_queue *txq,
   struct sk_buff *skb, char *data, int length,
   bool last_tcp, bool is_last)
{
 int tx_index;
 u32 cmd_sts;
 struct tx_desc *desc;

 tx_index = txq->tx_curr_desc++;
 if (txq->tx_curr_desc == txq->tx_ring_size)
  txq->tx_curr_desc = 0;
 desc = &txq->tx_desc_area[tx_index];
 txq->tx_desc_mapping[tx_index] = DESC_DMA_MAP_SINGLE;

 desc->l4i_chk = 0;
 desc->byte_cnt = length;

 if (length <= 8 && (uintptr_t)data & 0x7) {

  memcpy(txq->tso_hdrs + tx_index * TSO_HEADER_SIZE,
         data, length);
  desc->buf_ptr = txq->tso_hdrs_dma
   + tx_index * TSO_HEADER_SIZE;
 } else {

  txq->tx_desc_mapping[tx_index] = DESC_DMA_MAP_SINGLE;
  desc->buf_ptr = dma_map_single(dev->dev.parent, data,
   length, DMA_TO_DEVICE);
  if (unlikely(dma_mapping_error(dev->dev.parent,
            desc->buf_ptr))) {
   WARN(1, "dma_map_single failed!\n");
   return -ENOMEM;
  }
 }

 cmd_sts = BUFFER_OWNED_BY_DMA;
 if (last_tcp) {

  cmd_sts |= ZERO_PADDING | TX_LAST_DESC;

  if (is_last)
   cmd_sts |= TX_ENABLE_INTERRUPT;
 }
 desc->cmd_sts = cmd_sts;
 return 0;
}
