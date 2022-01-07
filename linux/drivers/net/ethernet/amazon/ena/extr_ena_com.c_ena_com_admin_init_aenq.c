
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ena_com_aenq {int q_depth; int head; int phase; struct ena_aenq_handlers* aenq_handlers; int dma_addr; int entries; } ;
struct ena_com_dev {scalar_t__ reg_bar; struct ena_com_aenq aenq; int dmadev; } ;
struct ena_aenq_handlers {int dummy; } ;
struct ena_admin_aenq_entry {int dummy; } ;


 int ADMIN_AENQ_SIZE (int) ;
 int EINVAL ;
 int ENA_ASYNC_QUEUE_DEPTH ;
 int ENA_DMA_ADDR_TO_UINT32_HIGH (int ) ;
 int ENA_DMA_ADDR_TO_UINT32_LOW (int ) ;
 scalar_t__ ENA_REGS_AENQ_BASE_HI_OFF ;
 scalar_t__ ENA_REGS_AENQ_BASE_LO_OFF ;
 int ENA_REGS_AENQ_CAPS_AENQ_DEPTH_MASK ;
 int ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_MASK ;
 int ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_SHIFT ;
 scalar_t__ ENA_REGS_AENQ_CAPS_OFF ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int ,int ,int *,int ) ;
 int pr_err (char*) ;
 scalar_t__ unlikely (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int ena_com_admin_init_aenq(struct ena_com_dev *dev,
       struct ena_aenq_handlers *aenq_handlers)
{
 struct ena_com_aenq *aenq = &dev->aenq;
 u32 addr_low, addr_high, aenq_caps;
 u16 size;

 dev->aenq.q_depth = ENA_ASYNC_QUEUE_DEPTH;
 size = ADMIN_AENQ_SIZE(ENA_ASYNC_QUEUE_DEPTH);
 aenq->entries = dma_alloc_coherent(dev->dmadev, size, &aenq->dma_addr,
        GFP_KERNEL);

 if (!aenq->entries) {
  pr_err("memory allocation failed\n");
  return -ENOMEM;
 }

 aenq->head = aenq->q_depth;
 aenq->phase = 1;

 addr_low = ENA_DMA_ADDR_TO_UINT32_LOW(aenq->dma_addr);
 addr_high = ENA_DMA_ADDR_TO_UINT32_HIGH(aenq->dma_addr);

 writel(addr_low, dev->reg_bar + ENA_REGS_AENQ_BASE_LO_OFF);
 writel(addr_high, dev->reg_bar + ENA_REGS_AENQ_BASE_HI_OFF);

 aenq_caps = 0;
 aenq_caps |= dev->aenq.q_depth & ENA_REGS_AENQ_CAPS_AENQ_DEPTH_MASK;
 aenq_caps |= (sizeof(struct ena_admin_aenq_entry)
        << ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_SHIFT) &
       ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_MASK;
 writel(aenq_caps, dev->reg_bar + ENA_REGS_AENQ_CAPS_OFF);

 if (unlikely(!aenq_handlers)) {
  pr_err("aenq handlers pointer is NULL\n");
  return -EINVAL;
 }

 aenq->aenq_handlers = aenq_handlers;

 return 0;
}
