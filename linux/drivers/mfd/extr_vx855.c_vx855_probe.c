
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int VX855_CFG_PMIO_OFFSET ;
 scalar_t__ VX855_PMIO_R_GPI ;
 scalar_t__ VX855_PMIO_R_GPO ;
 int dev_warn (int *,char*) ;
 int mfd_add_devices (int *,int,int ,int ,int *,int ,int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int vx855_cells ;
 TYPE_1__* vx855_gpio_resources ;

__attribute__((used)) static int vx855_probe(struct pci_dev *pdev,
     const struct pci_device_id *id)
{
 int ret;
 u16 gpio_io_offset;

 ret = pci_enable_device(pdev);
 if (ret)
  return -ENODEV;

 pci_read_config_word(pdev, VX855_CFG_PMIO_OFFSET, &gpio_io_offset);
 if (!gpio_io_offset) {
  dev_warn(&pdev->dev,
   "BIOS did not assign PMIO base offset?!?\n");
  ret = -ENODEV;
  goto out;
 }



 gpio_io_offset &= 0xff80;



 vx855_gpio_resources[0].start = gpio_io_offset + VX855_PMIO_R_GPI;
 vx855_gpio_resources[0].end = vx855_gpio_resources[0].start + 3;
 vx855_gpio_resources[1].start = gpio_io_offset + VX855_PMIO_R_GPO;
 vx855_gpio_resources[1].end = vx855_gpio_resources[1].start + 3;

 ret = mfd_add_devices(&pdev->dev, -1, vx855_cells, ARRAY_SIZE(vx855_cells),
   ((void*)0), 0, ((void*)0));



 return -ENODEV;
out:
 pci_disable_device(pdev);
 return ret;
}
