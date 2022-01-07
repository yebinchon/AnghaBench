
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdpvr_device {int udev; } ;


 int hdpvr_free_buffers (struct hdpvr_device*) ;
 int usb_put_dev (int ) ;

void hdpvr_delete(struct hdpvr_device *dev)
{
 hdpvr_free_buffers(dev);
 usb_put_dev(dev->udev);
}
