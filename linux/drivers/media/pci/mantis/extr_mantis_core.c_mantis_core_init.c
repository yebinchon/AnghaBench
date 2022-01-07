
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mantis_pci {int mantis_mmio; int mantis_addr; int latency; TYPE_3__* pdev; int subsystem_device; int subsystem_vendor; int revision; TYPE_1__* hwconfig; } ;
struct TYPE_6__ {int irq; int devfn; TYPE_2__* bus; } ;
struct TYPE_5__ {int number; } ;
struct TYPE_4__ {int dev_type; int model_name; } ;


 int MANTIS_DEBUG ;
 int MANTIS_ERROR ;
 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 int dprintk (int ,int ,int,char*,...) ;
 int get_mac_address (struct mantis_pci*) ;
 int mantis_dma_init (struct mantis_pci*) ;
 int mantis_dvb_init (struct mantis_pci*) ;
 int mantis_i2c_init (struct mantis_pci*) ;
 int mantis_load_config (struct mantis_pci*) ;
 int mantis_uart_init (struct mantis_pci*) ;
 int verbose ;

int mantis_core_init(struct mantis_pci *mantis)
{
 int err = 0;

 mantis_load_config(mantis);
 dprintk(verbose, MANTIS_ERROR, 0, "found a %s PCI %s device on (%02x:%02x.%x),\n",
  mantis->hwconfig->model_name, mantis->hwconfig->dev_type,
  mantis->pdev->bus->number, PCI_SLOT(mantis->pdev->devfn), PCI_FUNC(mantis->pdev->devfn));
 dprintk(verbose, MANTIS_ERROR, 0, "    Mantis Rev %d [%04x:%04x], ",
  mantis->revision,
  mantis->subsystem_vendor, mantis->subsystem_device);
 dprintk(verbose, MANTIS_ERROR, 0,
  "irq: %d, latency: %d\n    memory: 0x%lx, mmio: 0x%p\n",
  mantis->pdev->irq, mantis->latency,
  mantis->mantis_addr, mantis->mantis_mmio);

 err = mantis_i2c_init(mantis);
 if (err < 0) {
  dprintk(verbose, MANTIS_ERROR, 1, "Mantis I2C init failed");
  return err;
 }
 err = get_mac_address(mantis);
 if (err < 0) {
  dprintk(verbose, MANTIS_ERROR, 1, "get MAC address failed");
  return err;
 }
 err = mantis_dma_init(mantis);
 if (err < 0) {
  dprintk(verbose, MANTIS_ERROR, 1, "Mantis DMA init failed");
  return err;
 }
 err = mantis_dvb_init(mantis);
 if (err < 0) {
  dprintk(verbose, MANTIS_DEBUG, 1, "Mantis DVB init failed");
  return err;
 }
 err = mantis_uart_init(mantis);
 if (err < 0) {
  dprintk(verbose, MANTIS_DEBUG, 1, "Mantis UART init failed");
  return err;
 }

 return 0;
}
