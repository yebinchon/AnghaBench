
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct TYPE_4__ {struct pci_dev* sb_pdev; } ;
struct TYPE_3__ {struct pci_dev* sb_pdev; } ;


 int ARRAY_SIZE (int ) ;
 int dev_err (int *,char*) ;
 int devm_mfd_add_devices (int *,int,int ,int ,int *,int ,int *) ;
 int pci_enable_device (struct pci_dev*) ;
 TYPE_2__ rdc321x_gpio_pdata ;
 int rdc321x_sb_cells ;
 TYPE_1__ rdc321x_wdt_pdata ;

__attribute__((used)) static int rdc321x_sb_probe(struct pci_dev *pdev,
     const struct pci_device_id *ent)
{
 int err;

 err = pci_enable_device(pdev);
 if (err) {
  dev_err(&pdev->dev, "failed to enable device\n");
  return err;
 }

 rdc321x_gpio_pdata.sb_pdev = pdev;
 rdc321x_wdt_pdata.sb_pdev = pdev;

 return devm_mfd_add_devices(&pdev->dev, -1,
        rdc321x_sb_cells,
        ARRAY_SIZE(rdc321x_sb_cells),
        ((void*)0), 0, ((void*)0));
}
