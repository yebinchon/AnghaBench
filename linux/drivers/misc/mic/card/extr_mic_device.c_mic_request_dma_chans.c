
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_driver {scalar_t__ num_dma_ch; int dev; struct dma_chan** dma_ch; } ;
struct dma_chan {int dummy; } ;
typedef int dma_cap_mask_t ;


 int DMA_MEMCPY ;
 scalar_t__ MIC_MAX_DMA_CHAN ;
 int dev_info (int ,char*,scalar_t__) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 struct dma_chan* dma_request_channel (int ,int *,int *) ;

__attribute__((used)) static int mic_request_dma_chans(struct mic_driver *mdrv)
{
 dma_cap_mask_t mask;
 struct dma_chan *chan;

 dma_cap_zero(mask);
 dma_cap_set(DMA_MEMCPY, mask);

 do {
  chan = dma_request_channel(mask, ((void*)0), ((void*)0));
  if (chan) {
   mdrv->dma_ch[mdrv->num_dma_ch++] = chan;
   if (mdrv->num_dma_ch >= MIC_MAX_DMA_CHAN)
    break;
  }
 } while (chan);
 dev_info(mdrv->dev, "DMA channels # %d\n", mdrv->num_dma_ch);
 return mdrv->num_dma_ch;
}
