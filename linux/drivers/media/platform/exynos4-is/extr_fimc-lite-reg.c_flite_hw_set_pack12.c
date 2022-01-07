
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_lite {scalar_t__ regs; } ;


 scalar_t__ FLITE_REG_CIODMAFMT ;
 int FLITE_REG_CIODMAFMT_PACK12 ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void flite_hw_set_pack12(struct fimc_lite *dev, int on)
{
 u32 cfg = readl(dev->regs + FLITE_REG_CIODMAFMT);

 cfg &= ~FLITE_REG_CIODMAFMT_PACK12;

 if (on)
  cfg |= FLITE_REG_CIODMAFMT_PACK12;

 writel(cfg, dev->regs + FLITE_REG_CIODMAFMT);
}
