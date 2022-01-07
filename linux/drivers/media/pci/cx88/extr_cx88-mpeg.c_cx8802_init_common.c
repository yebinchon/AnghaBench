
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct cx88_core {int pci_irqmask; int name; } ;
struct TYPE_9__ {int active; } ;
struct cx8802_dev {TYPE_2__* pci; struct cx88_core* core; TYPE_1__ mpegq; int slock; int pci_lat; int pci_rev; } ;
struct TYPE_10__ {int irq; int revision; } ;


 int DMA_BIT_MASK (int) ;
 int EIO ;
 int INIT_LIST_HEAD (int *) ;
 int IRQF_SHARED ;
 int MO_PCI_INTMSK ;
 int PCI_LATENCY_TIMER ;
 int cx8802_irq ;
 int cx_set (int ,int ) ;
 scalar_t__ pci_enable_device (TYPE_2__*) ;
 int pci_name (TYPE_2__*) ;
 int pci_read_config_byte (TYPE_2__*,int ,int *) ;
 scalar_t__ pci_resource_start (TYPE_2__*,int ) ;
 int pci_set_dma_mask (TYPE_2__*,int ) ;
 int pci_set_drvdata (TYPE_2__*,struct cx8802_dev*) ;
 int pci_set_master (TYPE_2__*) ;
 int pr_err (char*,...) ;
 int pr_info (char*,int ,int ,int ,int ,unsigned long long) ;
 int request_irq (int ,int ,int ,int ,struct cx8802_dev*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int cx8802_init_common(struct cx8802_dev *dev)
{
 struct cx88_core *core = dev->core;
 int err;


 if (pci_enable_device(dev->pci))
  return -EIO;
 pci_set_master(dev->pci);
 err = pci_set_dma_mask(dev->pci, DMA_BIT_MASK(32));
 if (err) {
  pr_err("Oops: no 32bit PCI DMA ???\n");
  return -EIO;
 }

 dev->pci_rev = dev->pci->revision;
 pci_read_config_byte(dev->pci, PCI_LATENCY_TIMER, &dev->pci_lat);
 pr_info("found at %s, rev: %d, irq: %d, latency: %d, mmio: 0x%llx\n",
  pci_name(dev->pci), dev->pci_rev, dev->pci->irq,
  dev->pci_lat,
  (unsigned long long)pci_resource_start(dev->pci, 0));


 spin_lock_init(&dev->slock);


 INIT_LIST_HEAD(&dev->mpegq.active);


 err = request_irq(dev->pci->irq, cx8802_irq,
     IRQF_SHARED, dev->core->name, dev);
 if (err < 0) {
  pr_err("can't get IRQ %d\n", dev->pci->irq);
  return err;
 }
 cx_set(MO_PCI_INTMSK, core->pci_irqmask);


 pci_set_drvdata(dev->pci, dev);
 return 0;
}
