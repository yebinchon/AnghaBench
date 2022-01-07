
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int top; int left; } ;
struct flite_frame {int f_height; int f_width; TYPE_1__ rect; } ;
struct fimc_lite {scalar_t__ regs; } ;


 scalar_t__ FLITE_REG_CIOCAN ;
 int FLITE_REG_CIOCAN_MASK ;
 scalar_t__ FLITE_REG_CIOOFF ;
 int FLITE_REG_CIOOFF_MASK ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void flite_hw_set_dma_window(struct fimc_lite *dev, struct flite_frame *f)
{
 u32 cfg;


 cfg = readl(dev->regs + FLITE_REG_CIOCAN);
 cfg &= ~FLITE_REG_CIOCAN_MASK;
 cfg |= (f->f_height << 16) | f->f_width;
 writel(cfg, dev->regs + FLITE_REG_CIOCAN);


 cfg = readl(dev->regs + FLITE_REG_CIOOFF);
 cfg &= ~FLITE_REG_CIOOFF_MASK;
 cfg |= (f->rect.top << 16) | f->rect.left;
 writel(cfg, dev->regs + FLITE_REG_CIOOFF);
}
