
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tw686x_dev {scalar_t__ dma_mode; TYPE_2__* pci_dev; } ;
struct tw686x_audio_channel {size_t ch; TYPE_1__* dma_descs; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int phys; int size; void* virt; } ;


 int * ADMA_B_ADDR ;
 int * ADMA_P_ADDR ;
 int AUDIO_DMA_SIZE_MAX ;
 int ENOMEM ;
 scalar_t__ TW686X_DMA_MODE_MEMCPY ;
 int dev_err (int *,char*,size_t,char*) ;
 void* pci_alloc_consistent (TYPE_2__*,int ,int *) ;
 int reg_write (struct tw686x_dev*,int ,int ) ;

__attribute__((used)) static int tw686x_audio_dma_alloc(struct tw686x_dev *dev,
      struct tw686x_audio_channel *ac)
{
 int pb;






 if (dev->dma_mode != TW686X_DMA_MODE_MEMCPY)
  return 0;

 for (pb = 0; pb < 2; pb++) {
  u32 reg = pb ? ADMA_B_ADDR[ac->ch] : ADMA_P_ADDR[ac->ch];
  void *virt;

  virt = pci_alloc_consistent(dev->pci_dev, AUDIO_DMA_SIZE_MAX,
         &ac->dma_descs[pb].phys);
  if (!virt) {
   dev_err(&dev->pci_dev->dev,
    "dma%d: unable to allocate audio DMA %s-buffer\n",
    ac->ch, pb ? "B" : "P");
   return -ENOMEM;
  }
  ac->dma_descs[pb].virt = virt;
  ac->dma_descs[pb].size = AUDIO_DMA_SIZE_MAX;
  reg_write(dev, reg, ac->dma_descs[pb].phys);
 }
 return 0;
}
