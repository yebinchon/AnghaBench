
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_go7007 {int top_dma; int top; int bottom_dma; int bottom; } ;
struct saa7134_dev {TYPE_1__* pci; int empress_dev; } ;
struct go7007 {int vidq; struct saa7134_go7007* hpi_context; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int PAGE_SIZE ;
 int SAA7134_RS_BA1 (int) ;
 int SAA7134_RS_BA2 (int) ;
 int dma_sync_single_for_cpu (int *,int ,int ,int ) ;
 int go7007_parse_video_stream (struct go7007*,int ,int ) ;
 int pr_debug (char*,unsigned long) ;
 int saa_writel (int ,int ) ;
 int vb2_is_streaming (int *) ;
 struct go7007* video_get_drvdata (int ) ;

__attribute__((used)) static void saa7134_go7007_irq_ts_done(struct saa7134_dev *dev,
      unsigned long status)
{
 struct go7007 *go = video_get_drvdata(dev->empress_dev);
 struct saa7134_go7007 *saa = go->hpi_context;

 if (!vb2_is_streaming(&go->vidq))
  return;
 if (0 != (status & 0x000f0000))
  pr_debug("saa7134-go7007: irq: lost %ld\n",
    (status >> 16) & 0x0f);
 if (status & 0x100000) {
  dma_sync_single_for_cpu(&dev->pci->dev,
     saa->bottom_dma, PAGE_SIZE, DMA_FROM_DEVICE);
  go7007_parse_video_stream(go, saa->bottom, PAGE_SIZE);
  saa_writel(SAA7134_RS_BA2(5), saa->bottom_dma);
 } else {
  dma_sync_single_for_cpu(&dev->pci->dev,
     saa->top_dma, PAGE_SIZE, DMA_FROM_DEVICE);
  go7007_parse_video_stream(go, saa->top, PAGE_SIZE);
  saa_writel(SAA7134_RS_BA1(5), saa->top_dma);
 }
}
