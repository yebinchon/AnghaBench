
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw686x_video_channel {int ** sg_descs; struct tw686x_dev* dev; struct tw686x_dma_desc* dma_descs; } ;
struct tw686x_dma_desc {int * virt; int phys; scalar_t__ size; } ;
struct tw686x_dev {int pci_dev; } ;


 int pci_free_consistent (int ,scalar_t__,int *,int ) ;

__attribute__((used)) static void tw686x_sg_dma_free(struct tw686x_video_channel *vc,
          unsigned int pb)
{
 struct tw686x_dma_desc *desc = &vc->dma_descs[pb];
 struct tw686x_dev *dev = vc->dev;

 if (desc->size) {
  pci_free_consistent(dev->pci_dev, desc->size,
        desc->virt, desc->phys);
  desc->virt = ((void*)0);
 }

 vc->sg_descs[pb] = ((void*)0);
}
