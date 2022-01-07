
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r592_device {int dummy_dma_page_physical_address; scalar_t__ dummy_dma_page; int host; int mmio; int irq; TYPE_1__* req; int io_thread; } ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {int error; } ;


 int ETIME ;
 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int free_irq (int ,struct r592_device*) ;
 int iounmap (int ) ;
 int kthread_stop (int ) ;
 int memstick_free_host (int ) ;
 int memstick_next_req (int ,TYPE_1__**) ;
 int memstick_remove_host (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 struct r592_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int r592_enable_device (struct r592_device*,int) ;

__attribute__((used)) static void r592_remove(struct pci_dev *pdev)
{
 int error = 0;
 struct r592_device *dev = pci_get_drvdata(pdev);



 kthread_stop(dev->io_thread);

 r592_enable_device(dev, 0);

 while (!error && dev->req) {
  dev->req->error = -ETIME;
  error = memstick_next_req(dev->host, &dev->req);
 }
 memstick_remove_host(dev->host);

 free_irq(dev->irq, dev);
 iounmap(dev->mmio);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 memstick_free_host(dev->host);

 if (dev->dummy_dma_page)
  dma_free_coherent(&pdev->dev, PAGE_SIZE, dev->dummy_dma_page,
   dev->dummy_dma_page_physical_address);
}
