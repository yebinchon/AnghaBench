
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mic_device {scalar_t__ num_dma_ch; TYPE_2__* pdev; struct dma_chan** dma_ch; TYPE_1__* ops; } ;
struct dma_chan {int dummy; } ;
typedef int dma_cap_mask_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int dma_filter; } ;


 int DMA_MEMCPY ;
 scalar_t__ MIC_MAX_DMA_CHAN ;
 int dev_info (int *,char*,scalar_t__) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 struct dma_chan* dma_request_channel (int ,int ,int *) ;

__attribute__((used)) static int mic_request_dma_chans(struct mic_device *mdev)
{
 dma_cap_mask_t mask;
 struct dma_chan *chan;

 dma_cap_zero(mask);
 dma_cap_set(DMA_MEMCPY, mask);

 do {
  chan = dma_request_channel(mask, mdev->ops->dma_filter,
        &mdev->pdev->dev);
  if (chan) {
   mdev->dma_ch[mdev->num_dma_ch++] = chan;
   if (mdev->num_dma_ch >= MIC_MAX_DMA_CHAN)
    break;
  }
 } while (chan);
 dev_info(&mdev->pdev->dev, "DMA channels # %d\n", mdev->num_dma_ch);
 return mdev->num_dma_ch;
}
