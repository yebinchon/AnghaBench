
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int irq; } ;
struct mei_txe_hw {int mem_addr; } ;
struct mei_device {int dummy; } ;


 int BIT (int ) ;
 int BRIDGE_BAR ;
 int DMA_BIT_MASK (int) ;
 int DPM_FLAG_NEVER_SKIP ;
 int ENODEV ;
 int ENOMEM ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 int KBUILD_MODNAME ;
 int MEI_TXI_RPM_TIMEOUT ;
 int SEC_BAR ;
 int dev_err (int *,char*,...) ;
 int dev_pm_set_driver_flags (int *,int ) ;
 int free_irq (int ,struct mei_device*) ;
 int mei_cancel_work (struct mei_device*) ;
 int mei_clear_interrupts (struct mei_device*) ;
 int mei_disable_interrupts (struct mei_device*) ;
 int mei_register (struct mei_device*,int *) ;
 scalar_t__ mei_start (struct mei_device*) ;
 int mei_stop (struct mei_device*) ;
 struct mei_device* mei_txe_dev_init (struct pci_dev*) ;
 int * mei_txe_irq_quick_handler ;
 int mei_txe_irq_thread_handler ;
 int mei_txe_set_pm_domain (struct mei_device*) ;
 scalar_t__ pci_dev_msi_enabled (struct pci_dev*) ;
 int pci_enable_msi (struct pci_dev*) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct mei_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap_regions (struct pci_dev*,int const,int ) ;
 int pcim_iomap_table (struct pci_dev*) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int ) ;
 int pm_runtime_use_autosuspend (int *) ;
 int request_threaded_irq (int ,int *,int ,int ,int ,struct mei_device*) ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;

__attribute__((used)) static int mei_txe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct mei_device *dev;
 struct mei_txe_hw *hw;
 const int mask = BIT(SEC_BAR) | BIT(BRIDGE_BAR);
 int err;


 err = pcim_enable_device(pdev);
 if (err) {
  dev_err(&pdev->dev, "failed to enable pci device.\n");
  goto end;
 }

 pci_set_master(pdev);

 err = pcim_iomap_regions(pdev, mask, KBUILD_MODNAME);
 if (err) {
  dev_err(&pdev->dev, "failed to get pci regions.\n");
  goto end;
 }

 err = pci_set_dma_mask(pdev, DMA_BIT_MASK(36));
 if (err) {
  err = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
  if (err) {
   dev_err(&pdev->dev, "No suitable DMA available.\n");
   goto end;
  }
 }


 dev = mei_txe_dev_init(pdev);
 if (!dev) {
  err = -ENOMEM;
  goto end;
 }
 hw = to_txe_hw(dev);
 hw->mem_addr = pcim_iomap_table(pdev);

 pci_enable_msi(pdev);


 mei_clear_interrupts(dev);


 if (pci_dev_msi_enabled(pdev))
  err = request_threaded_irq(pdev->irq,
   ((void*)0),
   mei_txe_irq_thread_handler,
   IRQF_ONESHOT, KBUILD_MODNAME, dev);
 else
  err = request_threaded_irq(pdev->irq,
   mei_txe_irq_quick_handler,
   mei_txe_irq_thread_handler,
   IRQF_SHARED, KBUILD_MODNAME, dev);
 if (err) {
  dev_err(&pdev->dev, "mei: request_threaded_irq failure. irq = %d\n",
   pdev->irq);
  goto end;
 }

 if (mei_start(dev)) {
  dev_err(&pdev->dev, "init hw failure.\n");
  err = -ENODEV;
  goto release_irq;
 }

 pm_runtime_set_autosuspend_delay(&pdev->dev, MEI_TXI_RPM_TIMEOUT);
 pm_runtime_use_autosuspend(&pdev->dev);

 err = mei_register(dev, &pdev->dev);
 if (err)
  goto stop;

 pci_set_drvdata(pdev, dev);





 dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NEVER_SKIP);
 mei_txe_set_pm_domain(dev);

 pm_runtime_put_noidle(&pdev->dev);

 return 0;

stop:
 mei_stop(dev);
release_irq:
 mei_cancel_work(dev);
 mei_disable_interrupts(dev);
 free_irq(pdev->irq, dev);
end:
 dev_err(&pdev->dev, "initialization failed.\n");
 return err;
}
