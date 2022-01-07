
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hsmmc_host {int irq; int base; } ;


 int CC_EN ;
 int CMD ;
 int CON ;
 int IE ;
 int INIT_STREAM ;
 int INIT_STREAM_CMD ;
 int INT_EN_MASK ;
 int MMC_TIMEOUT_MS ;
 int OMAP_HSMMC_READ (int ,int ) ;
 int OMAP_HSMMC_WRITE (int ,int ,int) ;
 int STAT ;
 int STAT_CLEAR ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static void send_init_stream(struct omap_hsmmc_host *host)
{
 int reg = 0;
 unsigned long timeout;

 disable_irq(host->irq);

 OMAP_HSMMC_WRITE(host->base, IE, INT_EN_MASK);
 OMAP_HSMMC_WRITE(host->base, CON,
  OMAP_HSMMC_READ(host->base, CON) | INIT_STREAM);
 OMAP_HSMMC_WRITE(host->base, CMD, INIT_STREAM_CMD);

 timeout = jiffies + msecs_to_jiffies(MMC_TIMEOUT_MS);
 while ((reg != CC_EN) && time_before(jiffies, timeout))
  reg = OMAP_HSMMC_READ(host->base, STAT) & CC_EN;

 OMAP_HSMMC_WRITE(host->base, CON,
  OMAP_HSMMC_READ(host->base, CON) & ~INIT_STREAM);

 OMAP_HSMMC_WRITE(host->base, STAT, STAT_CLEAR);
 OMAP_HSMMC_READ(host->base, STAT);

 enable_irq(host->irq);
}
