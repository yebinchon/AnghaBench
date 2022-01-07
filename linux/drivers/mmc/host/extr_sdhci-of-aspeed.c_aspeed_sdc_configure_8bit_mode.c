
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aspeed_sdhci {int width_mask; } ;
struct aspeed_sdc {int lock; scalar_t__ regs; } ;


 scalar_t__ ASPEED_SDC_INFO ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void aspeed_sdc_configure_8bit_mode(struct aspeed_sdc *sdc,
        struct aspeed_sdhci *sdhci,
        bool bus8)
{
 u32 info;


 spin_lock(&sdc->lock);
 info = readl(sdc->regs + ASPEED_SDC_INFO);
 if (bus8)
  info |= sdhci->width_mask;
 else
  info &= ~sdhci->width_mask;
 writel(info, sdc->regs + ASPEED_SDC_INFO);
 spin_unlock(&sdc->lock);
}
