
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_hsmmc_host {int base; TYPE_1__* mmc; } ;
struct mmc_ios {scalar_t__ bus_mode; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;


 int CON ;
 scalar_t__ MMC_BUSMODE_OPENDRAIN ;
 int OD ;
 int OMAP_HSMMC_READ (int ,int ) ;
 int OMAP_HSMMC_WRITE (int ,int ,int) ;

__attribute__((used)) static void omap_hsmmc_set_bus_mode(struct omap_hsmmc_host *host)
{
 struct mmc_ios *ios = &host->mmc->ios;
 u32 con;

 con = OMAP_HSMMC_READ(host->base, CON);
 if (ios->bus_mode == MMC_BUSMODE_OPENDRAIN)
  OMAP_HSMMC_WRITE(host->base, CON, con | OD);
 else
  OMAP_HSMMC_WRITE(host->base, CON, con & ~OD);
}
