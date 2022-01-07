
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmio_mmc_host {int dma_issue; void* chan_tx; void* chan_rx; } ;
struct tmio_mmc_data {int dummy; } ;
struct TYPE_2__ {int dma_complete; } ;
struct renesas_sdhi {TYPE_1__ dma_priv; } ;


 int DM_CM_INFO1_MASK ;
 int DM_CM_INFO2_MASK ;
 int INFO1_MASK_CLEAR ;
 int INFO2_MASK_CLEAR ;
 struct renesas_sdhi* host_to_priv (struct tmio_mmc_host*) ;
 int renesas_sdhi_internal_dmac_complete_tasklet_fn ;
 int renesas_sdhi_internal_dmac_dm_write (struct tmio_mmc_host*,int ,int ) ;
 int renesas_sdhi_internal_dmac_issue_tasklet_fn ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static void
renesas_sdhi_internal_dmac_request_dma(struct tmio_mmc_host *host,
           struct tmio_mmc_data *pdata)
{
 struct renesas_sdhi *priv = host_to_priv(host);


 renesas_sdhi_internal_dmac_dm_write(host, DM_CM_INFO1_MASK,
         INFO1_MASK_CLEAR);
 renesas_sdhi_internal_dmac_dm_write(host, DM_CM_INFO2_MASK,
         INFO2_MASK_CLEAR);


 host->chan_rx = host->chan_tx = (void *)0xdeadbeaf;

 tasklet_init(&priv->dma_priv.dma_complete,
       renesas_sdhi_internal_dmac_complete_tasklet_fn,
       (unsigned long)host);
 tasklet_init(&host->dma_issue,
       renesas_sdhi_internal_dmac_issue_tasklet_fn,
       (unsigned long)host);
}
