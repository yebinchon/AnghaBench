
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tw686x_dev {int pci_dev; } ;
struct tw686x_audio_channel {TYPE_1__* dma_descs; } ;
struct TYPE_2__ {int * virt; int phys; int size; } ;


 int pci_free_consistent (int ,int ,int *,int ) ;

__attribute__((used)) static void tw686x_audio_dma_free(struct tw686x_dev *dev,
      struct tw686x_audio_channel *ac)
{
 int pb;

 for (pb = 0; pb < 2; pb++) {
  if (!ac->dma_descs[pb].virt)
   continue;
  pci_free_consistent(dev->pci_dev, ac->dma_descs[pb].size,
        ac->dma_descs[pb].virt,
        ac->dma_descs[pb].phys);
  ac->dma_descs[pb].virt = ((void*)0);
 }
}
