
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int irq; int revision; int dev; } ;
struct TYPE_3__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct cx23885_dev {int board; TYPE_1__ v4l2_dev; int name; int pci_lat; int pci_rev; struct pci_dev* pci; struct v4l2_ctrl_handler ctrl_handler; int need_dma_reset; } ;




 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int PCI_LATENCY_TIMER ;
 int PCI_MSK_GPIO0 ;
 int PCI_MSK_GPIO1 ;
 scalar_t__ cx23885_dev_setup (struct cx23885_dev*) ;
 int cx23885_dev_unregister (struct cx23885_dev*) ;
 int cx23885_does_need_dma_reset () ;
 int cx23885_input_init (struct cx23885_dev*) ;
 int cx23885_ir_pci_int_enable (struct cx23885_dev*) ;
 int cx23885_irq ;
 int cx23885_irq_add_enable (struct cx23885_dev*,int) ;
 int cx23885_v4l2_dev_notify_init (struct cx23885_dev*) ;
 int kfree (struct cx23885_dev*) ;
 struct cx23885_dev* kzalloc (int,int ) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int ,int *) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int) ;
 int pci_set_master (struct pci_dev*) ;
 int pr_err (char*,int ,...) ;
 int pr_info (char*,int ,int ,int ,int ,int ,unsigned long long) ;
 int request_irq (int ,int ,int ,int ,struct cx23885_dev*) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_device_register (int *,TYPE_1__*) ;
 int v4l2_device_unregister (TYPE_1__*) ;

__attribute__((used)) static int cx23885_initdev(struct pci_dev *pci_dev,
      const struct pci_device_id *pci_id)
{
 struct cx23885_dev *dev;
 struct v4l2_ctrl_handler *hdl;
 int err;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (((void*)0) == dev)
  return -ENOMEM;

 dev->need_dma_reset = cx23885_does_need_dma_reset();

 err = v4l2_device_register(&pci_dev->dev, &dev->v4l2_dev);
 if (err < 0)
  goto fail_free;

 hdl = &dev->ctrl_handler;
 v4l2_ctrl_handler_init(hdl, 6);
 if (hdl->error) {
  err = hdl->error;
  goto fail_ctrl;
 }
 dev->v4l2_dev.ctrl_handler = hdl;


 cx23885_v4l2_dev_notify_init(dev);


 dev->pci = pci_dev;
 if (pci_enable_device(pci_dev)) {
  err = -EIO;
  goto fail_ctrl;
 }

 if (cx23885_dev_setup(dev) < 0) {
  err = -EINVAL;
  goto fail_ctrl;
 }


 dev->pci_rev = pci_dev->revision;
 pci_read_config_byte(pci_dev, PCI_LATENCY_TIMER, &dev->pci_lat);
 pr_info("%s/0: found at %s, rev: %d, irq: %d, latency: %d, mmio: 0x%llx\n",
        dev->name,
        pci_name(pci_dev), dev->pci_rev, pci_dev->irq,
        dev->pci_lat,
  (unsigned long long)pci_resource_start(pci_dev, 0));

 pci_set_master(pci_dev);
 err = pci_set_dma_mask(pci_dev, 0xffffffff);
 if (err) {
  pr_err("%s/0: Oops: no 32bit PCI DMA ???\n", dev->name);
  goto fail_ctrl;
 }

 err = request_irq(pci_dev->irq, cx23885_irq,
     IRQF_SHARED, dev->name, dev);
 if (err < 0) {
  pr_err("%s: can't get IRQ %d\n",
         dev->name, pci_dev->irq);
  goto fail_irq;
 }

 switch (dev->board) {
 case 129:
  cx23885_irq_add_enable(dev, PCI_MSK_GPIO1 | PCI_MSK_GPIO0);
  break;
 case 128:
  cx23885_irq_add_enable(dev, PCI_MSK_GPIO0);
  break;
 }






 cx23885_ir_pci_int_enable(dev);
 cx23885_input_init(dev);

 return 0;

fail_irq:
 cx23885_dev_unregister(dev);
fail_ctrl:
 v4l2_ctrl_handler_free(hdl);
 v4l2_device_unregister(&dev->v4l2_dev);
fail_free:
 kfree(dev);
 return err;
}
