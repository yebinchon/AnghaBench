
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvm_mmc_host {int mmc_serializer; int has_ciu3; } ;


 int octeon_bootbus_sem ;
 int up (int *) ;

__attribute__((used)) static void octeon_mmc_release_bus(struct cvm_mmc_host *host)
{
 if (!host->has_ciu3)
  up(&octeon_bootbus_sem);
 else
  up(&host->mmc_serializer);
}
