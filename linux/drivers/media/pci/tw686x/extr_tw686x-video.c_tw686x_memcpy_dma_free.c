
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw686x_video_channel {struct tw686x_dev* dev; struct tw686x_dma_desc* dma_descs; } ;
struct tw686x_dma_desc {int * virt; int phys; int size; } ;
struct tw686x_dev {struct pci_dev* pci_dev; int lock; } ;
struct pci_dev {int dummy; } ;


 int WARN (int,char*) ;
 int pci_free_consistent (struct pci_dev*,int ,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void tw686x_memcpy_dma_free(struct tw686x_video_channel *vc,
       unsigned int pb)
{
 struct tw686x_dma_desc *desc = &vc->dma_descs[pb];
 struct tw686x_dev *dev = vc->dev;
 struct pci_dev *pci_dev;
 unsigned long flags;


 spin_lock_irqsave(&dev->lock, flags);
 pci_dev = dev->pci_dev;
 spin_unlock_irqrestore(&dev->lock, flags);
 if (!pci_dev) {
  WARN(1, "trying to deallocate on missing device\n");
  return;
 }

 if (desc->virt) {
  pci_free_consistent(dev->pci_dev, desc->size,
        desc->virt, desc->phys);
  desc->virt = ((void*)0);
 }
}
