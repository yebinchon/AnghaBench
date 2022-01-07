
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_hsmmc_host {int base; TYPE_1__* mmc; } ;
struct mmc_ios {scalar_t__ timing; int bus_width; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;


 int CON ;
 int DDR ;
 int DW8 ;
 int FOUR_BIT ;
 int HCTL ;



 scalar_t__ MMC_TIMING_MMC_DDR52 ;
 scalar_t__ MMC_TIMING_UHS_DDR50 ;
 int OMAP_HSMMC_READ (int ,int ) ;
 int OMAP_HSMMC_WRITE (int ,int ,int) ;

__attribute__((used)) static void omap_hsmmc_set_bus_width(struct omap_hsmmc_host *host)
{
 struct mmc_ios *ios = &host->mmc->ios;
 u32 con;

 con = OMAP_HSMMC_READ(host->base, CON);
 if (ios->timing == MMC_TIMING_MMC_DDR52 ||
     ios->timing == MMC_TIMING_UHS_DDR50)
  con |= DDR;
 else
  con &= ~DDR;
 switch (ios->bus_width) {
 case 128:
  OMAP_HSMMC_WRITE(host->base, CON, con | DW8);
  break;
 case 129:
  OMAP_HSMMC_WRITE(host->base, CON, con & ~DW8);
  OMAP_HSMMC_WRITE(host->base, HCTL,
   OMAP_HSMMC_READ(host->base, HCTL) | FOUR_BIT);
  break;
 case 130:
  OMAP_HSMMC_WRITE(host->base, CON, con & ~DW8);
  OMAP_HSMMC_WRITE(host->base, HCTL,
   OMAP_HSMMC_READ(host->base, HCTL) & ~FOUR_BIT);
  break;
 }
}
