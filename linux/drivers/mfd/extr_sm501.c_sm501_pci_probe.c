
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sm501_devdata {struct sm501_devdata* regs_claim; int regs; TYPE_1__* io_res; TYPE_1__* mem_res; int irq; TYPE_3__* dev; scalar_t__ pdev_id; int * platdata; } ;
struct pci_device_id {int dummy; } ;
struct TYPE_6__ {int * platform_data; } ;
struct pci_dev {TYPE_3__ dev; TYPE_1__* resource; int irq; scalar_t__ devfn; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int start; } ;


 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int SM501_FBPD_SWAP_FB_ENDIAN ;
 int dev_err (TYPE_3__*,char*) ;
 int kfree (struct sm501_devdata*) ;
 struct sm501_devdata* kzalloc (int,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_ioremap_bar (struct pci_dev*,int) ;
 int pci_resource_flags (struct pci_dev*,int) ;
 int pci_set_drvdata (struct pci_dev*,struct sm501_devdata*) ;
 int release_resource (struct sm501_devdata*) ;
 struct sm501_devdata* request_mem_region (int ,int,char*) ;
 TYPE_2__ sm501_fb_pdata ;
 int sm501_init_dev (struct sm501_devdata*) ;
 int sm501_pci_platdata ;

__attribute__((used)) static int sm501_pci_probe(struct pci_dev *dev,
         const struct pci_device_id *id)
{
 struct sm501_devdata *sm;
 int err;

 sm = kzalloc(sizeof(*sm), GFP_KERNEL);
 if (!sm) {
  err = -ENOMEM;
  goto err1;
 }


 dev->dev.platform_data = sm->platdata = &sm501_pci_platdata;


 sm->pdev_id = 32 + dev->devfn;

 pci_set_drvdata(dev, sm);

 err = pci_enable_device(dev);
 if (err) {
  dev_err(&dev->dev, "cannot enable device\n");
  goto err2;
 }

 sm->dev = &dev->dev;
 sm->irq = dev->irq;
 if (!(pci_resource_flags(dev, 0) & IORESOURCE_MEM)) {
  dev_err(&dev->dev, "region #0 is not memory?\n");
  err = -EINVAL;
  goto err3;
 }

 if (!(pci_resource_flags(dev, 1) & IORESOURCE_MEM)) {
  dev_err(&dev->dev, "region #1 is not memory?\n");
  err = -EINVAL;
  goto err3;
 }



 sm->io_res = &dev->resource[1];
 sm->mem_res = &dev->resource[0];

 sm->regs_claim = request_mem_region(sm->io_res->start,
         0x100, "sm501");
 if (!sm->regs_claim) {
  dev_err(&dev->dev, "cannot claim registers\n");
  err= -EBUSY;
  goto err3;
 }

 sm->regs = pci_ioremap_bar(dev, 1);
 if (!sm->regs) {
  dev_err(&dev->dev, "cannot remap registers\n");
  err = -EIO;
  goto err4;
 }

 sm501_init_dev(sm);
 return 0;

 err4:
 release_resource(sm->regs_claim);
 kfree(sm->regs_claim);
 err3:
 pci_disable_device(dev);
 err2:
 kfree(sm);
 err1:
 return err;
}
