
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mmc_omap_slot {int fclk_freq; } ;
struct mmc_omap_host {struct mmc_omap_slot* current_slot; } ;


 int CMD ;
 unsigned int DIV_ROUND_UP (int,int ) ;
 int OMAP_MMC_READ (struct mmc_omap_host*,int ) ;
 int OMAP_MMC_STAT_END_OF_CMD ;
 int OMAP_MMC_WRITE (struct mmc_omap_host*,int ,int) ;
 int STAT ;
 int USEC_PER_SEC ;
 int udelay (int) ;

__attribute__((used)) static void
mmc_omap_send_abort(struct mmc_omap_host *host, int maxloops)
{
 struct mmc_omap_slot *slot = host->current_slot;
 unsigned int restarts, passes, timeout;
 u16 stat = 0;


 timeout = DIV_ROUND_UP(120 * USEC_PER_SEC, slot->fclk_freq);
 restarts = 0;
 while (restarts < maxloops) {
  OMAP_MMC_WRITE(host, STAT, 0xFFFF);
  OMAP_MMC_WRITE(host, CMD, (3 << 12) | (1 << 7));

  passes = 0;
  while (passes < timeout) {
   stat = OMAP_MMC_READ(host, STAT);
   if (stat & OMAP_MMC_STAT_END_OF_CMD)
    goto out;
   udelay(1);
   passes++;
  }

  restarts++;
 }
out:
 OMAP_MMC_WRITE(host, STAT, stat);
}
