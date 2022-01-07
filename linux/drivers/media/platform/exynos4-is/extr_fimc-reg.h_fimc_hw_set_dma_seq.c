
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_dev {scalar_t__ regs; } ;


 scalar_t__ FIMC_REG_CIFCNTSEQ ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void fimc_hw_set_dma_seq(struct fimc_dev *dev, u32 mask)
{
 writel(mask, dev->regs + FIMC_REG_CIFCNTSEQ);
}
