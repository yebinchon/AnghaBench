
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_lite {scalar_t__ regs; } ;


 scalar_t__ FLITE_REG_CIFCNTSEQ ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void flite_hw_set_dma_buf_mask(struct fimc_lite *dev, u32 mask)
{
 writel(mask, dev->regs + FLITE_REG_CIFCNTSEQ);
}
