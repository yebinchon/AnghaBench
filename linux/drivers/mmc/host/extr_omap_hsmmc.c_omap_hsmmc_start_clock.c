
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hsmmc_host {int base; } ;


 int CEN ;
 int OMAP_HSMMC_READ (int ,int ) ;
 int OMAP_HSMMC_WRITE (int ,int ,int) ;
 int SYSCTL ;

__attribute__((used)) static void omap_hsmmc_start_clock(struct omap_hsmmc_host *host)
{
 OMAP_HSMMC_WRITE(host->base, SYSCTL,
  OMAP_HSMMC_READ(host->base, SYSCTL) | CEN);
}
