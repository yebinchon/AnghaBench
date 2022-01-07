
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int mmc; } ;


 int mmc_free_host (int ) ;

void tmio_mmc_host_free(struct tmio_mmc_host *host)
{
 mmc_free_host(host->mmc);
}
