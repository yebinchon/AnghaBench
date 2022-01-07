
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_go7007 {int bottom_dma; int top_dma; struct saa7134_dev* dev; } ;
struct saa7134_dev {TYPE_1__* pci; } ;
struct go7007 {struct saa7134_go7007* hpi_context; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int EINVAL ;
 int PAGE_SIZE ;
 int SAA7134_IRQ1 ;
 int SAA7134_IRQ1_INTE_RA2_0 ;
 int SAA7134_IRQ1_INTE_RA2_1 ;
 int SAA7134_MAIN_CTRL ;
 int SAA7134_MAIN_CTRL_TE5 ;
 int SAA7134_TS_PARALLEL ;
 int dma_unmap_page (int *,int ,int ,int ) ;
 int saa_clearb (int ,int) ;
 int saa_clearl (int ,int) ;

__attribute__((used)) static int saa7134_go7007_stream_stop(struct go7007 *go)
{
 struct saa7134_go7007 *saa = go->hpi_context;
 struct saa7134_dev *dev;

 if (!saa)
  return -EINVAL;
 dev = saa->dev;
 if (!dev)
  return -EINVAL;


 saa_clearl(SAA7134_MAIN_CTRL, SAA7134_MAIN_CTRL_TE5);


 saa_clearl(SAA7134_IRQ1,
   SAA7134_IRQ1_INTE_RA2_1 | SAA7134_IRQ1_INTE_RA2_0);


 saa_clearb(SAA7134_TS_PARALLEL, 0x80);

 dma_unmap_page(&dev->pci->dev, saa->top_dma, PAGE_SIZE,
   DMA_FROM_DEVICE);
 dma_unmap_page(&dev->pci->dev, saa->bottom_dma, PAGE_SIZE,
   DMA_FROM_DEVICE);

 return 0;
}
