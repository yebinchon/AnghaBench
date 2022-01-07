
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw5864_dev {int v4l2_dev; int mmio; struct pci_dev* pci; int slock; int name; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; int irq; } ;


 int DMA_BIT_MASK (int) ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int TW5864_H264REV ;
 int TW5864_HW_VERSION ;
 int TW5864_UNDECLARED_H264REV_PART2 ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,...) ;
 struct tw5864_dev* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int ,int ,int ,char*,struct tw5864_dev*) ;
 int iounmap (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_ioremap_bar (struct pci_dev*,int ) ;
 char* pci_name (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_master (struct pci_dev*) ;
 int snprintf (int ,int,char*,char*) ;
 int spin_lock_init (int *) ;
 int tw5864_isr ;
 int tw5864_video_fini (struct tw5864_dev*) ;
 int tw5864_video_init (struct tw5864_dev*,int ) ;
 int tw_readl (int ) ;
 int v4l2_device_register (int *,int *) ;
 int v4l2_device_unregister (int *) ;
 int video_nr ;

__attribute__((used)) static int tw5864_initdev(struct pci_dev *pci_dev,
     const struct pci_device_id *pci_id)
{
 struct tw5864_dev *dev;
 int err;

 dev = devm_kzalloc(&pci_dev->dev, sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 snprintf(dev->name, sizeof(dev->name), "tw5864:%s", pci_name(pci_dev));

 err = v4l2_device_register(&pci_dev->dev, &dev->v4l2_dev);
 if (err)
  return err;


 dev->pci = pci_dev;
 err = pci_enable_device(pci_dev);
 if (err) {
  dev_err(&dev->pci->dev, "pci_enable_device() failed\n");
  goto unreg_v4l2;
 }

 pci_set_master(pci_dev);

 err = pci_set_dma_mask(pci_dev, DMA_BIT_MASK(32));
 if (err) {
  dev_err(&dev->pci->dev, "32 bit PCI DMA is not supported\n");
  goto disable_pci;
 }


 err = pci_request_regions(pci_dev, dev->name);
 if (err) {
  dev_err(&dev->pci->dev, "Cannot request regions for MMIO\n");
  goto disable_pci;
 }
 dev->mmio = pci_ioremap_bar(pci_dev, 0);
 if (!dev->mmio) {
  err = -EIO;
  dev_err(&dev->pci->dev, "can't ioremap() MMIO memory\n");
  goto release_mmio;
 }

 spin_lock_init(&dev->slock);

 dev_info(&pci_dev->dev, "TW5864 hardware version: %04x\n",
   tw_readl(TW5864_HW_VERSION));
 dev_info(&pci_dev->dev, "TW5864 H.264 core version: %04x:%04x\n",
   tw_readl(TW5864_H264REV),
   tw_readl(TW5864_UNDECLARED_H264REV_PART2));

 err = tw5864_video_init(dev, video_nr);
 if (err)
  goto unmap_mmio;


 err = devm_request_irq(&pci_dev->dev, pci_dev->irq, tw5864_isr,
          IRQF_SHARED, "tw5864", dev);
 if (err < 0) {
  dev_err(&dev->pci->dev, "can't get IRQ %d\n", pci_dev->irq);
  goto fini_video;
 }

 dev_info(&pci_dev->dev, "Note: there are known video quality issues. For details\n");
 dev_info(&pci_dev->dev, "see the comment in drivers/media/pci/tw5864/tw5864-core.c.\n");

 return 0;

fini_video:
 tw5864_video_fini(dev);
unmap_mmio:
 iounmap(dev->mmio);
release_mmio:
 pci_release_regions(pci_dev);
disable_pci:
 pci_disable_device(pci_dev);
unreg_v4l2:
 v4l2_device_unregister(&dev->v4l2_dev);
 return err;
}
