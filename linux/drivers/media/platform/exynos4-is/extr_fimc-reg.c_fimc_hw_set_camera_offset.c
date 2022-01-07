
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_frame {int offs_h; int offs_v; int o_width; int width; int o_height; int height; } ;
struct fimc_dev {scalar_t__ regs; } ;


 scalar_t__ FIMC_REG_CIWDOFST ;
 scalar_t__ FIMC_REG_CIWDOFST2 ;
 int FIMC_REG_CIWDOFST_HOROFF_MASK ;
 int FIMC_REG_CIWDOFST_OFF_EN ;
 int FIMC_REG_CIWDOFST_VEROFF_MASK ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void fimc_hw_set_camera_offset(struct fimc_dev *fimc, struct fimc_frame *f)
{
 u32 hoff2, voff2;

 u32 cfg = readl(fimc->regs + FIMC_REG_CIWDOFST);

 cfg &= ~(FIMC_REG_CIWDOFST_HOROFF_MASK | FIMC_REG_CIWDOFST_VEROFF_MASK);
 cfg |= FIMC_REG_CIWDOFST_OFF_EN |
  (f->offs_h << 16) | f->offs_v;

 writel(cfg, fimc->regs + FIMC_REG_CIWDOFST);


 hoff2 = f->o_width - f->width - f->offs_h;
 voff2 = f->o_height - f->height - f->offs_v;
 cfg = (hoff2 << 16) | voff2;
 writel(cfg, fimc->regs + FIMC_REG_CIWDOFST2);
}
