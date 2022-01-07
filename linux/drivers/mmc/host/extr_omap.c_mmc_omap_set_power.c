
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mmc_omap_slot {int id; int mmc; TYPE_1__* pdata; struct mmc_omap_host* host; } ;
struct mmc_omap_host {int dummy; } ;
struct TYPE_2__ {int (* set_power ) (int ,int ,int,int) ;} ;


 int CON ;
 int OMAP_MMC_READ (struct mmc_omap_host*,int ) ;
 int OMAP_MMC_WRITE (struct mmc_omap_host*,int ,int) ;
 int mmc_dev (int ) ;
 scalar_t__ mmc_omap2 () ;
 int stub1 (int ,int ,int,int) ;

__attribute__((used)) static void mmc_omap_set_power(struct mmc_omap_slot *slot, int power_on,
    int vdd)
{
 struct mmc_omap_host *host;

 host = slot->host;

 if (slot->pdata->set_power != ((void*)0))
  slot->pdata->set_power(mmc_dev(slot->mmc), slot->id, power_on,
     vdd);
 if (mmc_omap2()) {
  u16 w;

  if (power_on) {
   w = OMAP_MMC_READ(host, CON);
   OMAP_MMC_WRITE(host, CON, w | (1 << 11));
  } else {
   w = OMAP_MMC_READ(host, CON);
   OMAP_MMC_WRITE(host, CON, w & ~(1 << 11));
  }
 }
}
