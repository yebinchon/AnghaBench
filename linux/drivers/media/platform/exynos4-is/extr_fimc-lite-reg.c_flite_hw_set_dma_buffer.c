
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct flite_buffer {unsigned int index; int paddr; } ;
struct fimc_lite {scalar_t__ regs; TYPE_1__* dd; } ;
struct TYPE_2__ {int max_dma_bufs; } ;


 int BIT (unsigned int) ;
 scalar_t__ FLITE_REG_CIFCNTSEQ ;
 scalar_t__ FLITE_REG_CIOSA ;
 scalar_t__ FLITE_REG_CIOSAN (unsigned int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void flite_hw_set_dma_buffer(struct fimc_lite *dev, struct flite_buffer *buf)
{
 unsigned int index;
 u32 cfg;

 if (dev->dd->max_dma_bufs == 1)
  index = 0;
 else
  index = buf->index;

 if (index == 0)
  writel(buf->paddr, dev->regs + FLITE_REG_CIOSA);
 else
  writel(buf->paddr, dev->regs + FLITE_REG_CIOSAN(index - 1));

 cfg = readl(dev->regs + FLITE_REG_CIFCNTSEQ);
 cfg |= BIT(index);
 writel(cfg, dev->regs + FLITE_REG_CIFCNTSEQ);
}
