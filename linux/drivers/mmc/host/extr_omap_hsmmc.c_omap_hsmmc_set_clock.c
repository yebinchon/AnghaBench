
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_hsmmc_host {int base; int fclk; TYPE_2__* mmc; } ;
struct mmc_ios {scalar_t__ timing; int clock; } ;
struct TYPE_4__ {struct mmc_ios ios; } ;
struct TYPE_3__ {int features; } ;


 int CAPA ;
 unsigned long CLKD_MASK ;
 int DTO ;
 unsigned long DTO_MASK ;
 int HCTL ;
 int HSMMC_HAS_HSPE_SUPPORT ;
 unsigned long HSPE ;
 unsigned long HSS ;
 unsigned long ICE ;
 unsigned long ICS ;
 int MMC_TIMEOUT_MS ;
 scalar_t__ MMC_TIMING_MMC_DDR52 ;
 scalar_t__ MMC_TIMING_UHS_DDR50 ;
 unsigned long OMAP_HSMMC_READ (int ,int ) ;
 int OMAP_HSMMC_WRITE (int ,int ,unsigned long) ;
 int SYSCTL ;
 unsigned long calc_divisor (struct omap_hsmmc_host*,struct mmc_ios*) ;
 unsigned long clk_get_rate (int ) ;
 int cpu_relax () ;
 int dev_vdbg (int ,char*,int ) ;
 unsigned long jiffies ;
 int mmc_dev (TYPE_2__*) ;
 TYPE_1__* mmc_pdata (struct omap_hsmmc_host*) ;
 unsigned long msecs_to_jiffies (int ) ;
 int omap_hsmmc_start_clock (struct omap_hsmmc_host*) ;
 int omap_hsmmc_stop_clock (struct omap_hsmmc_host*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static void omap_hsmmc_set_clock(struct omap_hsmmc_host *host)
{
 struct mmc_ios *ios = &host->mmc->ios;
 unsigned long regval;
 unsigned long timeout;
 unsigned long clkdiv;

 dev_vdbg(mmc_dev(host->mmc), "Set clock to %uHz\n", ios->clock);

 omap_hsmmc_stop_clock(host);

 regval = OMAP_HSMMC_READ(host->base, SYSCTL);
 regval = regval & ~(CLKD_MASK | DTO_MASK);
 clkdiv = calc_divisor(host, ios);
 regval = regval | (clkdiv << 6) | (DTO << 16);
 OMAP_HSMMC_WRITE(host->base, SYSCTL, regval);
 OMAP_HSMMC_WRITE(host->base, SYSCTL,
  OMAP_HSMMC_READ(host->base, SYSCTL) | ICE);


 timeout = jiffies + msecs_to_jiffies(MMC_TIMEOUT_MS);
 while ((OMAP_HSMMC_READ(host->base, SYSCTL) & ICS) != ICS
  && time_before(jiffies, timeout))
  cpu_relax();
 if ((mmc_pdata(host)->features & HSMMC_HAS_HSPE_SUPPORT) &&
     (ios->timing != MMC_TIMING_MMC_DDR52) &&
     (ios->timing != MMC_TIMING_UHS_DDR50) &&
     ((OMAP_HSMMC_READ(host->base, CAPA) & HSS) == HSS)) {
  regval = OMAP_HSMMC_READ(host->base, HCTL);
  if (clkdiv && (clk_get_rate(host->fclk)/clkdiv) > 25000000)
   regval |= HSPE;
  else
   regval &= ~HSPE;

  OMAP_HSMMC_WRITE(host->base, HCTL, regval);
 }

 omap_hsmmc_start_clock(host);
}
