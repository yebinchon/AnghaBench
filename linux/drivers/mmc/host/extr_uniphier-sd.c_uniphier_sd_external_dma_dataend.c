
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int dummy; } ;


 int tmio_mmc_do_data_irq (struct tmio_mmc_host*) ;
 int uniphier_sd_dma_endisable (struct tmio_mmc_host*,int ) ;

__attribute__((used)) static void uniphier_sd_external_dma_dataend(struct tmio_mmc_host *host)
{
 uniphier_sd_dma_endisable(host, 0);

 tmio_mmc_do_data_irq(host);
}
