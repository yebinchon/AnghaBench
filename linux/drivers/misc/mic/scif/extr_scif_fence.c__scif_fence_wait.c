
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_chan; int markwq; } ;
struct scif_endpt {TYPE_1__ rma_info; } ;
typedef scalar_t__ scif_epd_t ;
typedef int dma_cookie_t ;


 scalar_t__ DMA_COMPLETE ;
 int ETIMEDOUT ;
 int SCIF_NODE_ALIVE_TIMEOUT ;
 int SCIF_REMOTE_FENCE ;
 scalar_t__ dma_async_is_tx_complete (int ,int,int *,int *) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int _scif_fence_wait(scif_epd_t epd, int mark)
{
 struct scif_endpt *ep = (struct scif_endpt *)epd;
 dma_cookie_t cookie = mark & ~SCIF_REMOTE_FENCE;
 int err;


 err = wait_event_interruptible_timeout(ep->rma_info.markwq,
            dma_async_is_tx_complete(
            ep->rma_info.dma_chan,
            cookie, ((void*)0), ((void*)0)) ==
            DMA_COMPLETE,
            SCIF_NODE_ALIVE_TIMEOUT);
 if (!err)
  err = -ETIMEDOUT;
 else if (err > 0)
  err = 0;
 return err;
}
