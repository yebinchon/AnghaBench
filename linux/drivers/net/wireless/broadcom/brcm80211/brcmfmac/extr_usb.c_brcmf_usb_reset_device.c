
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;


 int brcmf_dev_reset (int ) ;

__attribute__((used)) static int brcmf_usb_reset_device(struct device *dev, void *notused)
{



 brcmf_dev_reset(dev->parent);
 return 0;
}
