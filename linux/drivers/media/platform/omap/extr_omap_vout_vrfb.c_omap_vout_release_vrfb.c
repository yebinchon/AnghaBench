
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ req_status; int chan; int xt; } ;
struct omap_vout_device {TYPE_1__ vrfb_dma_tx; int * vrfb_context; } ;


 scalar_t__ DMA_CHAN_ALLOTED ;
 scalar_t__ DMA_CHAN_NOT_ALLOTED ;
 int VRFB_NUM_BUFS ;
 int dma_release_channel (int ) ;
 int dmaengine_terminate_sync (int ) ;
 int kfree (int ) ;
 int omap_vrfb_release_ctx (int *) ;

void omap_vout_release_vrfb(struct omap_vout_device *vout)
{
 int i;

 for (i = 0; i < VRFB_NUM_BUFS; i++)
  omap_vrfb_release_ctx(&vout->vrfb_context[i]);

 if (vout->vrfb_dma_tx.req_status == DMA_CHAN_ALLOTED) {
  vout->vrfb_dma_tx.req_status = DMA_CHAN_NOT_ALLOTED;
  kfree(vout->vrfb_dma_tx.xt);
  dmaengine_terminate_sync(vout->vrfb_dma_tx.chan);
  dma_release_channel(vout->vrfb_dma_tx.chan);
 }
}
