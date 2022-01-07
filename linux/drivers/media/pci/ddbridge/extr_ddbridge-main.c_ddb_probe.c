
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_device_id {int vendor; int device; int subvendor; } ;
struct pci_dev {int dev; int subsystem_device; } ;
struct ddb {int has_dma; TYPE_2__* link; int regs; struct pci_dev* pdev; int regs_len; int * dev; int mutex; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_4__ {int vendor; int device; int devid; int hwid; int regmapid; int subdevice; int subvendor; } ;
struct TYPE_5__ {TYPE_1__ ids; TYPE_3__* info; struct ddb* dev; } ;


 int DMA_BASE_READ ;
 int DMA_BASE_WRITE ;
 int DMA_BIT_MASK (int) ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ ddb_init (struct ddb*) ;
 int ddb_irq_exit (struct ddb*) ;
 int ddb_irq_init (struct ddb*) ;
 int ddb_msi_exit (struct ddb*) ;
 int ddb_unmap (struct ddb*) ;
 int ddbreadl (struct ddb*,int) ;
 int ddbwritel (struct ddb*,int ,int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int,...) ;
 TYPE_3__* get_ddb_info (int,int,int ,int ) ;
 int ioremap (int ,int ) ;
 int mutex_init (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 scalar_t__ pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct ddb*) ;
 int pci_set_master (struct pci_dev*) ;
 struct ddb* vzalloc (int) ;

__attribute__((used)) static int ddb_probe(struct pci_dev *pdev,
       const struct pci_device_id *id)
{
 struct ddb *dev;
 int stat = 0;

 if (pci_enable_device(pdev) < 0)
  return -ENODEV;

 pci_set_master(pdev);

 if (pci_set_dma_mask(pdev, DMA_BIT_MASK(64)))
  if (pci_set_dma_mask(pdev, DMA_BIT_MASK(32)))
   return -ENODEV;

 dev = vzalloc(sizeof(*dev));
 if (!dev)
  return -ENOMEM;

 mutex_init(&dev->mutex);
 dev->has_dma = 1;
 dev->pdev = pdev;
 dev->dev = &pdev->dev;
 pci_set_drvdata(pdev, dev);

 dev->link[0].ids.vendor = id->vendor;
 dev->link[0].ids.device = id->device;
 dev->link[0].ids.subvendor = id->subvendor;
 dev->link[0].ids.subdevice = pdev->subsystem_device;
 dev->link[0].ids.devid = (id->device << 16) | id->vendor;

 dev->link[0].dev = dev;
 dev->link[0].info = get_ddb_info(id->vendor, id->device,
      id->subvendor, pdev->subsystem_device);

 dev_info(&pdev->dev, "detected %s\n", dev->link[0].info->name);

 dev->regs_len = pci_resource_len(dev->pdev, 0);
 dev->regs = ioremap(pci_resource_start(dev->pdev, 0),
       pci_resource_len(dev->pdev, 0));

 if (!dev->regs) {
  dev_err(&pdev->dev, "not enough memory for register map\n");
  stat = -ENOMEM;
  goto fail;
 }
 if (ddbreadl(dev, 0) == 0xffffffff) {
  dev_err(&pdev->dev, "cannot read registers\n");
  stat = -ENODEV;
  goto fail;
 }

 dev->link[0].ids.hwid = ddbreadl(dev, 0);
 dev->link[0].ids.regmapid = ddbreadl(dev, 4);

 dev_info(&pdev->dev, "HW %08x REGMAP %08x\n",
   dev->link[0].ids.hwid, dev->link[0].ids.regmapid);

 ddbwritel(dev, 0, DMA_BASE_READ);
 ddbwritel(dev, 0, DMA_BASE_WRITE);

 stat = ddb_irq_init(dev);
 if (stat < 0)
  goto fail0;

 if (ddb_init(dev) == 0)
  return 0;

 ddb_irq_exit(dev);
fail0:
 dev_err(&pdev->dev, "fail0\n");
 ddb_msi_exit(dev);
fail:
 dev_err(&pdev->dev, "fail\n");

 ddb_unmap(dev);
 pci_set_drvdata(pdev, ((void*)0));
 pci_disable_device(pdev);
 return -1;
}
