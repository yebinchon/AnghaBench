
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvm_mmc_host {int mmc_serializer; } ;


 int up (int *) ;

__attribute__((used)) static void thunder_mmc_release_bus(struct cvm_mmc_host *host)
{
 up(&host->mmc_serializer);
}
