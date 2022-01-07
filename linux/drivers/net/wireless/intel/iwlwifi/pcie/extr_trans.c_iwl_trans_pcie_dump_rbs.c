
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans_pcie {int rx_page_order; struct iwl_rxq* rxq; } ;
struct iwl_trans {int dev; } ;
struct iwl_rxq {int read; int lock; struct iwl_rx_mem_buffer** queue; } ;
struct iwl_rx_mem_buffer {int page; int page_dma; } ;
struct iwl_fw_error_dump_rb {int data; void* index; } ;
struct iwl_fw_error_dump_data {scalar_t__ data; void* len; void* type; } ;


 int DMA_FROM_DEVICE ;
 int IWL_FW_ERROR_DUMP_RB ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int PAGE_SIZE ;
 int RX_QUEUE_MASK ;
 void* cpu_to_le32 (int) ;
 int dma_map_page (int ,int ,int ,int,int ) ;
 int dma_unmap_page (int ,int ,int,int ) ;
 struct iwl_fw_error_dump_data* iwl_fw_error_next_data (struct iwl_fw_error_dump_data*) ;
 int iwl_get_closed_rb_stts (struct iwl_trans*,struct iwl_rxq*) ;
 int le16_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 int page_address (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static u32 iwl_trans_pcie_dump_rbs(struct iwl_trans *trans,
       struct iwl_fw_error_dump_data **data,
       int allocated_rb_nums)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int max_len = PAGE_SIZE << trans_pcie->rx_page_order;

 struct iwl_rxq *rxq = &trans_pcie->rxq[0];
 u32 i, r, j, rb_len = 0;

 spin_lock(&rxq->lock);

 r = le16_to_cpu(iwl_get_closed_rb_stts(trans, rxq)) & 0x0FFF;

 for (i = rxq->read, j = 0;
      i != r && j < allocated_rb_nums;
      i = (i + 1) & RX_QUEUE_MASK, j++) {
  struct iwl_rx_mem_buffer *rxb = rxq->queue[i];
  struct iwl_fw_error_dump_rb *rb;

  dma_unmap_page(trans->dev, rxb->page_dma, max_len,
          DMA_FROM_DEVICE);

  rb_len += sizeof(**data) + sizeof(*rb) + max_len;

  (*data)->type = cpu_to_le32(IWL_FW_ERROR_DUMP_RB);
  (*data)->len = cpu_to_le32(sizeof(*rb) + max_len);
  rb = (void *)(*data)->data;
  rb->index = cpu_to_le32(i);
  memcpy(rb->data, page_address(rxb->page), max_len);

  rxb->page_dma = dma_map_page(trans->dev, rxb->page, 0,
           max_len,
           DMA_FROM_DEVICE);

  *data = iwl_fw_error_next_data(*data);
 }

 spin_unlock(&rxq->lock);

 return rb_len;
}
