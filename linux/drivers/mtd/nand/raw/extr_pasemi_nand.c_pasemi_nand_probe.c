
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct pci_dev {int dummy; } ;
struct TYPE_9__ {int IO_ADDR_R; scalar_t__ chip_delay; int write_buf; int read_buf; int dev_ready; int cmd_ctrl; int IO_ADDR_W; } ;
struct TYPE_8__ {int algo; int mode; } ;
struct nand_chip {TYPE_3__ legacy; int bbt_options; TYPE_2__ ecc; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {struct device* parent; } ;
struct TYPE_10__ {TYPE_1__ dev; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NAND_BBT_USE_FLASH ;
 int NAND_ECC_HAMMING ;
 int NAND_ECC_SOFT ;
 int PCI_VENDOR_ID_PASEMI ;
 int dev_dbg (struct device*,char*,struct resource*) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,struct resource*,int ) ;
 int driver_name ;
 int iounmap (int ) ;
 int kfree (struct nand_chip*) ;
 struct nand_chip* kzalloc (int,int ) ;
 int lpcctl ;
 scalar_t__ mtd_device_register (TYPE_4__*,int *,int ) ;
 int nand_scan (struct nand_chip*,int) ;
 TYPE_4__* nand_to_mtd (struct nand_chip*) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int of_iomap (struct device_node*,int ) ;
 int pasemi_device_ready ;
 int pasemi_hwcontrol ;
 TYPE_4__* pasemi_nand_mtd ;
 int pasemi_read_buf ;
 int pasemi_write_buf ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int,int *) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int release_region (int ,int) ;
 int request_region (int ,int,int ) ;

__attribute__((used)) static int pasemi_nand_probe(struct platform_device *ofdev)
{
 struct device *dev = &ofdev->dev;
 struct pci_dev *pdev;
 struct device_node *np = dev->of_node;
 struct resource res;
 struct nand_chip *chip;
 int err = 0;

 err = of_address_to_resource(np, 0, &res);

 if (err)
  return -EINVAL;


 if (pasemi_nand_mtd)
  return -ENODEV;

 dev_dbg(dev, "pasemi_nand at %pR\n", &res);


 chip = kzalloc(sizeof(struct nand_chip), GFP_KERNEL);
 if (!chip) {
  err = -ENOMEM;
  goto out;
 }

 pasemi_nand_mtd = nand_to_mtd(chip);


 pasemi_nand_mtd->dev.parent = dev;

 chip->legacy.IO_ADDR_R = of_iomap(np, 0);
 chip->legacy.IO_ADDR_W = chip->legacy.IO_ADDR_R;

 if (!chip->legacy.IO_ADDR_R) {
  err = -EIO;
  goto out_mtd;
 }

 pdev = pci_get_device(PCI_VENDOR_ID_PASEMI, 0xa008, ((void*)0));
 if (!pdev) {
  err = -ENODEV;
  goto out_ior;
 }

 lpcctl = pci_resource_start(pdev, 0);
 pci_dev_put(pdev);

 if (!request_region(lpcctl, 4, driver_name)) {
  err = -EBUSY;
  goto out_ior;
 }

 chip->legacy.cmd_ctrl = pasemi_hwcontrol;
 chip->legacy.dev_ready = pasemi_device_ready;
 chip->legacy.read_buf = pasemi_read_buf;
 chip->legacy.write_buf = pasemi_write_buf;
 chip->legacy.chip_delay = 0;
 chip->ecc.mode = NAND_ECC_SOFT;
 chip->ecc.algo = NAND_ECC_HAMMING;


 chip->bbt_options = NAND_BBT_USE_FLASH;


 err = nand_scan(chip, 1);
 if (err)
  goto out_lpc;

 if (mtd_device_register(pasemi_nand_mtd, ((void*)0), 0)) {
  dev_err(dev, "Unable to register MTD device\n");
  err = -ENODEV;
  goto out_lpc;
 }

 dev_info(dev, "PA Semi NAND flash at %pR, control at I/O %x\n", &res,
   lpcctl);

 return 0;

 out_lpc:
 release_region(lpcctl, 4);
 out_ior:
 iounmap(chip->legacy.IO_ADDR_R);
 out_mtd:
 kfree(chip);
 out:
 return err;
}
