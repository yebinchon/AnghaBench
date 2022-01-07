
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_mmc_host {int dummy; } ;


 int mxs_mmc_request_done (struct mxs_mmc_host*) ;

__attribute__((used)) static void mxs_mmc_dma_irq_callback(void *param)
{
 struct mxs_mmc_host *host = param;

 mxs_mmc_request_done(host);
}
