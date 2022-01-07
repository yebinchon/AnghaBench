
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct omap_hsmmc_host {int base; TYPE_1__* pdata; } ;
struct TYPE_2__ {int controller_flags; } ;


 int CAPA ;
 int HCTL ;
 int OMAP_HSMMC_READ (int ,int ) ;
 int OMAP_HSMMC_SUPPORTS_DUAL_VOLT ;
 int OMAP_HSMMC_WRITE (int ,int ,int) ;
 int SDVS18 ;
 int SDVS30 ;
 int SDVS_MASK ;
 int VS18 ;
 int VS30 ;
 int set_sd_bus_power (struct omap_hsmmc_host*) ;

__attribute__((used)) static void omap_hsmmc_conf_bus_power(struct omap_hsmmc_host *host)
{
 u32 hctl, capa, value;


 if (host->pdata->controller_flags & OMAP_HSMMC_SUPPORTS_DUAL_VOLT) {
  hctl = SDVS30;
  capa = VS30 | VS18;
 } else {
  hctl = SDVS18;
  capa = VS18;
 }

 value = OMAP_HSMMC_READ(host->base, HCTL) & ~SDVS_MASK;
 OMAP_HSMMC_WRITE(host->base, HCTL, value | hctl);

 value = OMAP_HSMMC_READ(host->base, CAPA);
 OMAP_HSMMC_WRITE(host->base, CAPA, value | capa);


 set_sd_bus_power(host);
}
