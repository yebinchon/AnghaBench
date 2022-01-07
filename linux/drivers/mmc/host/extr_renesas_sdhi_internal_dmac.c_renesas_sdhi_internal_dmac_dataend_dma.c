
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmio_mmc_host {int dummy; } ;
struct TYPE_2__ {int dma_complete; } ;
struct renesas_sdhi {TYPE_1__ dma_priv; } ;


 struct renesas_sdhi* host_to_priv (struct tmio_mmc_host*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void
renesas_sdhi_internal_dmac_dataend_dma(struct tmio_mmc_host *host) {
 struct renesas_sdhi *priv = host_to_priv(host);

 tasklet_schedule(&priv->dma_priv.dma_complete);
}
