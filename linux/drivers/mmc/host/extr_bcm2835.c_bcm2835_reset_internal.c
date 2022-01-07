
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835_host {int hcfg; int cdiv; scalar_t__ ioaddr; scalar_t__ clock; } ;


 int FIFO_READ_THRESHOLD ;
 int FIFO_WRITE_THRESHOLD ;
 scalar_t__ SDARG ;
 scalar_t__ SDCDIV ;
 scalar_t__ SDCMD ;
 scalar_t__ SDEDM ;
 int SDEDM_READ_THRESHOLD_SHIFT ;
 int SDEDM_THRESHOLD_MASK ;
 int SDEDM_WRITE_THRESHOLD_SHIFT ;
 scalar_t__ SDHBCT ;
 scalar_t__ SDHBLC ;
 scalar_t__ SDHCFG ;
 scalar_t__ SDHSTS ;
 scalar_t__ SDTOUT ;
 scalar_t__ SDVDD ;
 int SDVDD_POWER_OFF ;
 int SDVDD_POWER_ON ;
 int msleep (int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void bcm2835_reset_internal(struct bcm2835_host *host)
{
 u32 temp;

 writel(SDVDD_POWER_OFF, host->ioaddr + SDVDD);
 writel(0, host->ioaddr + SDCMD);
 writel(0, host->ioaddr + SDARG);
 writel(0xf00000, host->ioaddr + SDTOUT);
 writel(0, host->ioaddr + SDCDIV);
 writel(0x7f8, host->ioaddr + SDHSTS);
 writel(0, host->ioaddr + SDHCFG);
 writel(0, host->ioaddr + SDHBCT);
 writel(0, host->ioaddr + SDHBLC);


 temp = readl(host->ioaddr + SDEDM);
 temp &= ~((SDEDM_THRESHOLD_MASK << SDEDM_READ_THRESHOLD_SHIFT) |
    (SDEDM_THRESHOLD_MASK << SDEDM_WRITE_THRESHOLD_SHIFT));
 temp |= (FIFO_READ_THRESHOLD << SDEDM_READ_THRESHOLD_SHIFT) |
  (FIFO_WRITE_THRESHOLD << SDEDM_WRITE_THRESHOLD_SHIFT);
 writel(temp, host->ioaddr + SDEDM);
 msleep(20);
 writel(SDVDD_POWER_ON, host->ioaddr + SDVDD);
 msleep(20);
 host->clock = 0;
 writel(host->hcfg, host->ioaddr + SDHCFG);
 writel(host->cdiv, host->ioaddr + SDCDIV);
}
