
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r852_device {struct r852_device* chip; int phys_bounce_buffer; int bounce_buffer; int mmio; struct r852_device* tmp_buffer; int irq; int card_workqueue; int card_detect_work; } ;
struct pci_dev {int dev; } ;


 int R852_DMA_LEN ;
 int cancel_delayed_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int free_irq (int ,struct r852_device*) ;
 int kfree (struct r852_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct r852_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int r852_disable_irqs (struct r852_device*) ;
 int r852_unregister_nand_device (struct r852_device*) ;

__attribute__((used)) static void r852_remove(struct pci_dev *pci_dev)
{
 struct r852_device *dev = pci_get_drvdata(pci_dev);



 cancel_delayed_work_sync(&dev->card_detect_work);
 destroy_workqueue(dev->card_workqueue);


 r852_unregister_nand_device(dev);


 r852_disable_irqs(dev);
 free_irq(dev->irq, dev);


 kfree(dev->tmp_buffer);
 pci_iounmap(pci_dev, dev->mmio);
 dma_free_coherent(&pci_dev->dev, R852_DMA_LEN, dev->bounce_buffer,
     dev->phys_bounce_buffer);

 kfree(dev->chip);
 kfree(dev);


 pci_release_regions(pci_dev);
 pci_disable_device(pci_dev);
}
