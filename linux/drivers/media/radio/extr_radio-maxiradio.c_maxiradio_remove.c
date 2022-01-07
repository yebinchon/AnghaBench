
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct pci_dev {int dev; } ;
struct maxiradio {int io; int tea; } ;


 struct v4l2_device* dev_get_drvdata (int *) ;
 int kfree (struct maxiradio*) ;
 int outb (int ,int ) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int release_region (int ,int ) ;
 int snd_tea575x_exit (int *) ;
 struct maxiradio* to_maxiradio (struct v4l2_device*) ;
 int v4l2_device_unregister (struct v4l2_device*) ;

__attribute__((used)) static void maxiradio_remove(struct pci_dev *pdev)
{
 struct v4l2_device *v4l2_dev = dev_get_drvdata(&pdev->dev);
 struct maxiradio *dev = to_maxiradio(v4l2_dev);

 snd_tea575x_exit(&dev->tea);

 outb(0, dev->io);
 v4l2_device_unregister(v4l2_dev);
 release_region(pci_resource_start(pdev, 0), pci_resource_len(pdev, 0));
 kfree(dev);
}
