
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct aq_ring_s {scalar_t__ sw_head; scalar_t__ hw_head; struct aq_ring_buff_s* buff_ring; int aq_nic; } ;
struct aq_ring_buff_s {int eop_index; unsigned int pa; int skb; int is_eop; int len; int is_sop; int is_mapped; } ;


 unsigned int AQ_CFG_TX_CLEAN_BUDGET ;
 int DMA_TO_DEVICE ;
 struct device* aq_nic_get_dev (int ) ;
 int aq_ring_dx_in_range (size_t,int,scalar_t__) ;
 size_t aq_ring_next_dx (struct aq_ring_s*,size_t) ;
 int dev_kfree_skb_any (int ) ;
 int dma_unmap_page (struct device*,unsigned int,int ,int ) ;
 int dma_unmap_single (struct device*,unsigned int,int ,int ) ;
 scalar_t__ likely (int ) ;
 scalar_t__ unlikely (int ) ;

bool aq_ring_tx_clean(struct aq_ring_s *self)
{
 struct device *dev = aq_nic_get_dev(self->aq_nic);
 unsigned int budget;

 for (budget = AQ_CFG_TX_CLEAN_BUDGET;
      budget && self->sw_head != self->hw_head; budget--) {
  struct aq_ring_buff_s *buff = &self->buff_ring[self->sw_head];

  if (likely(buff->is_mapped)) {
   if (unlikely(buff->is_sop)) {
    if (!buff->is_eop &&
        buff->eop_index != 0xffffU &&
        (!aq_ring_dx_in_range(self->sw_head,
      buff->eop_index,
      self->hw_head)))
     break;

    dma_unmap_single(dev, buff->pa, buff->len,
       DMA_TO_DEVICE);
   } else {
    dma_unmap_page(dev, buff->pa, buff->len,
            DMA_TO_DEVICE);
   }
  }

  if (unlikely(buff->is_eop))
   dev_kfree_skb_any(buff->skb);

  buff->pa = 0U;
  buff->eop_index = 0xffffU;
  self->sw_head = aq_ring_next_dx(self, self->sw_head);
 }

 return !!budget;
}
