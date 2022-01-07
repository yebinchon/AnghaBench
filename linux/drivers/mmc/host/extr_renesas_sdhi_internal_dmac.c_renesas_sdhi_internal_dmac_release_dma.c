
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int * chan_tx; int chan_rx; } ;



__attribute__((used)) static void
renesas_sdhi_internal_dmac_release_dma(struct tmio_mmc_host *host)
{

 host->chan_rx = host->chan_tx = ((void*)0);
}
