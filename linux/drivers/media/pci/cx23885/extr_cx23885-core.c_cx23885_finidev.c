
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct pci_dev {int irq; } ;
struct cx23885_dev {int ctrl_handler; } ;


 int cx23885_dev_unregister (struct cx23885_dev*) ;
 int cx23885_input_fini (struct cx23885_dev*) ;
 int cx23885_ir_fini (struct cx23885_dev*) ;
 int cx23885_shutdown (struct cx23885_dev*) ;
 int free_irq (int ,struct cx23885_dev*) ;
 int kfree (struct cx23885_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct v4l2_device* pci_get_drvdata (struct pci_dev*) ;
 struct cx23885_dev* to_cx23885 (struct v4l2_device*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister (struct v4l2_device*) ;

__attribute__((used)) static void cx23885_finidev(struct pci_dev *pci_dev)
{
 struct v4l2_device *v4l2_dev = pci_get_drvdata(pci_dev);
 struct cx23885_dev *dev = to_cx23885(v4l2_dev);

 cx23885_input_fini(dev);
 cx23885_ir_fini(dev);

 cx23885_shutdown(dev);


 free_irq(pci_dev->irq, dev);

 pci_disable_device(pci_dev);

 cx23885_dev_unregister(dev);
 v4l2_ctrl_handler_free(&dev->ctrl_handler);
 v4l2_device_unregister(v4l2_dev);
 kfree(dev);
}
