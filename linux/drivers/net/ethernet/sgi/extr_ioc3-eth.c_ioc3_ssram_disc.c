
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ioc3_private {int* ssram; int emcr; struct ioc3_ethregs* regs; } ;
struct ioc3_ethregs {int emcr; } ;


 int EMCR_BUFSIZ ;
 int EMCR_RAMPAR ;
 int IOC3_SSRAM_DM ;
 int readl (int*) ;
 int writel (int,int*) ;

__attribute__((used)) static inline void ioc3_ssram_disc(struct ioc3_private *ip)
{
 struct ioc3_ethregs *regs = ip->regs;
 u32 *ssram0 = &ip->ssram[0x0000];
 u32 *ssram1 = &ip->ssram[0x4000];
 u32 pattern = 0x5555;


 writel(readl(&regs->emcr) | (EMCR_BUFSIZ | EMCR_RAMPAR), &regs->emcr);
 readl(&regs->emcr);

 writel(pattern, ssram0);
 writel(~pattern & IOC3_SSRAM_DM, ssram1);

 if ((readl(ssram0) & IOC3_SSRAM_DM) != pattern ||
     (readl(ssram1) & IOC3_SSRAM_DM) != (~pattern & IOC3_SSRAM_DM)) {

  ip->emcr |= EMCR_RAMPAR;
  writel(readl(&regs->emcr) & ~EMCR_BUFSIZ, &regs->emcr);
 } else {
  ip->emcr |= EMCR_BUFSIZ | EMCR_RAMPAR;
 }
}
