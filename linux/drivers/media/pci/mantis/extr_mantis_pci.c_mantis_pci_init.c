
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int irq; int subsystem_device; int subsystem_vendor; int revision; int devfn; TYPE_1__* bus; } ;
struct mantis_pci {int mmio; int mantis_addr; int latency; struct pci_dev* pdev; int revision; struct mantis_hwconfig* hwconfig; } ;
struct mantis_hwconfig {int irq_handler; int dev_type; int model_name; } ;
struct TYPE_2__ {int number; } ;


 int DMA_BIT_MASK (int) ;
 int DRIVER_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int IRQF_SHARED ;
 int MANTIS_ERROR ;
 int PCI_FUNC (int ) ;
 int PCI_LATENCY_TIMER ;
 int PCI_SLOT (int ) ;
 int dprintk (int ,int,char*,...) ;
 int ioremap (int ,int ) ;
 int iounmap (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int ,int *) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct mantis_pci*) ;
 int pci_set_master (struct pci_dev*) ;
 int release_mem_region (int ,int ) ;
 int request_irq (int ,int ,int ,int ,struct mantis_pci*) ;
 int request_mem_region (int ,int ,int ) ;

int mantis_pci_init(struct mantis_pci *mantis)
{
 u8 latency;
 struct mantis_hwconfig *config = mantis->hwconfig;
 struct pci_dev *pdev = mantis->pdev;
 int err, ret = 0;

 dprintk(MANTIS_ERROR, 0, "found a %s PCI %s device on (%02x:%02x.%x),\n",
  config->model_name,
  config->dev_type,
  mantis->pdev->bus->number,
  PCI_SLOT(mantis->pdev->devfn),
  PCI_FUNC(mantis->pdev->devfn));

 err = pci_enable_device(pdev);
 if (err != 0) {
  ret = -ENODEV;
  dprintk(MANTIS_ERROR, 1, "ERROR: PCI enable failed <%i>", err);
  goto fail0;
 }

 err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(32));
 if (err != 0) {
  dprintk(MANTIS_ERROR, 1, "ERROR: Unable to obtain 32 bit DMA <%i>", err);
  ret = -ENOMEM;
  goto fail1;
 }

 pci_set_master(pdev);

 if (!request_mem_region(pci_resource_start(pdev, 0),
    pci_resource_len(pdev, 0),
    DRIVER_NAME)) {

  dprintk(MANTIS_ERROR, 1, "ERROR: BAR0 Request failed !");
  ret = -ENODEV;
  goto fail1;
 }

 mantis->mmio = ioremap(pci_resource_start(pdev, 0),
          pci_resource_len(pdev, 0));

 if (!mantis->mmio) {
  dprintk(MANTIS_ERROR, 1, "ERROR: BAR0 remap failed !");
  ret = -ENODEV;
  goto fail2;
 }

 pci_read_config_byte(pdev, PCI_LATENCY_TIMER, &latency);
 mantis->latency = latency;
 mantis->revision = pdev->revision;

 dprintk(MANTIS_ERROR, 0, "    Mantis Rev %d [%04x:%04x], ",
  mantis->revision,
  mantis->pdev->subsystem_vendor,
  mantis->pdev->subsystem_device);

 dprintk(MANTIS_ERROR, 0,
  "irq: %d, latency: %d\n    memory: 0x%lx, mmio: 0x%p\n",
  mantis->pdev->irq,
  mantis->latency,
  mantis->mantis_addr,
  mantis->mmio);

 err = request_irq(pdev->irq,
     config->irq_handler,
     IRQF_SHARED,
     DRIVER_NAME,
     mantis);

 if (err != 0) {

  dprintk(MANTIS_ERROR, 1, "ERROR: IRQ registration failed ! <%d>", err);
  ret = -ENODEV;
  goto fail3;
 }

 pci_set_drvdata(pdev, mantis);
 return ret;


fail3:
 dprintk(MANTIS_ERROR, 1, "ERROR: <%d> I/O unmap", ret);
 if (mantis->mmio)
  iounmap(mantis->mmio);

fail2:
 dprintk(MANTIS_ERROR, 1, "ERROR: <%d> releasing regions", ret);
 release_mem_region(pci_resource_start(pdev, 0),
      pci_resource_len(pdev, 0));

fail1:
 dprintk(MANTIS_ERROR, 1, "ERROR: <%d> disabling device", ret);
 pci_disable_device(pdev);

fail0:
 dprintk(MANTIS_ERROR, 1, "ERROR: <%d> exiting", ret);
 return ret;
}
