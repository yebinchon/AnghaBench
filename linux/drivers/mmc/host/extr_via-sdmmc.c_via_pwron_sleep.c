
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_crdr_mmc_host {int quirks; } ;


 int VIA_CRDR_QUIRK_300MS_PWRDELAY ;
 int msleep (int) ;

__attribute__((used)) static void via_pwron_sleep(struct via_crdr_mmc_host *sdhost)
{
 if (sdhost->quirks & VIA_CRDR_QUIRK_300MS_PWRDELAY)
  msleep(300);
 else
  msleep(3);
}
