
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw686x_dev {int v4l2_dev; int lock; int * pci_dev; int mmio; int dma_delay_timer; } ;
struct pci_dev {int irq; } ;


 int del_timer_sync (int *) ;
 int free_irq (int ,struct tw686x_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct tw686x_dev* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tw686x_audio_free (struct tw686x_dev*) ;
 int tw686x_video_free (struct tw686x_dev*) ;
 int v4l2_device_put (int *) ;

__attribute__((used)) static void tw686x_remove(struct pci_dev *pci_dev)
{
 struct tw686x_dev *dev = pci_get_drvdata(pci_dev);
 unsigned long flags;




 free_irq(pci_dev->irq, dev);

 tw686x_video_free(dev);
 tw686x_audio_free(dev);
 del_timer_sync(&dev->dma_delay_timer);

 pci_iounmap(pci_dev, dev->mmio);
 pci_release_regions(pci_dev);
 pci_disable_device(pci_dev);
 spin_lock_irqsave(&dev->lock, flags);
 dev->pci_dev = ((void*)0);
 spin_unlock_irqrestore(&dev->lock, flags);





 v4l2_device_put(&dev->v4l2_dev);
}
