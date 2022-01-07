
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {size_t driver_data; int device; } ;
struct pci_dev {int dev; } ;
struct mfd_cell {int dummy; } ;
struct lpc_sch_info {int irq_gpio; int io_size_wdt; int io_size_gpio; int io_size_smbus; } ;


 int ENODEV ;
 int GPIOBASE ;
 int SMBASE ;
 int WDTBASE ;
 int dev_err (int *,char*) ;
 int lpc_sch_populate_cell (struct pci_dev*,int ,char*,int ,int,int ,struct mfd_cell*) ;
 int mfd_add_devices (int *,int ,struct mfd_cell*,unsigned int,int *,int ,int *) ;
 struct lpc_sch_info* sch_chipset_info ;

__attribute__((used)) static int lpc_sch_probe(struct pci_dev *dev, const struct pci_device_id *id)
{
 struct mfd_cell lpc_sch_cells[3];
 struct lpc_sch_info *info = &sch_chipset_info[id->driver_data];
 unsigned int cells = 0;
 int ret;

 ret = lpc_sch_populate_cell(dev, SMBASE, "isch_smbus",
        info->io_size_smbus, -1,
        id->device, &lpc_sch_cells[cells]);
 if (ret < 0)
  return ret;
 if (ret == 0)
  cells++;

 ret = lpc_sch_populate_cell(dev, GPIOBASE, "sch_gpio",
        info->io_size_gpio, info->irq_gpio,
        id->device, &lpc_sch_cells[cells]);
 if (ret < 0)
  return ret;
 if (ret == 0)
  cells++;

 ret = lpc_sch_populate_cell(dev, WDTBASE, "ie6xx_wdt",
        info->io_size_wdt, -1,
        id->device, &lpc_sch_cells[cells]);
 if (ret < 0)
  return ret;
 if (ret == 0)
  cells++;

 if (cells == 0) {
  dev_err(&dev->dev, "All decode registers disabled.\n");
  return -ENODEV;
 }

 return mfd_add_devices(&dev->dev, 0, lpc_sch_cells, cells, ((void*)0), 0, ((void*)0));
}
