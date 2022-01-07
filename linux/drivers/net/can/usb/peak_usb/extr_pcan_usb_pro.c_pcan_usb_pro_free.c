
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peak_usb_device {int next_siblings; int prev_siblings; } ;


 int kfree (int ) ;
 int pcan_usb_pro_dev_if (struct peak_usb_device*) ;

__attribute__((used)) static void pcan_usb_pro_free(struct peak_usb_device *dev)
{

 if (!dev->prev_siblings && !dev->next_siblings)
  kfree(pcan_usb_pro_dev_if(dev));
}
