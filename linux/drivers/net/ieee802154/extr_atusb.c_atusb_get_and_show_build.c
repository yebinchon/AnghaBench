
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;
struct atusb {struct usb_device* usb_dev; } ;


 int ATUSB_BUILD ;
 scalar_t__ ATUSB_BUILD_SIZE ;
 int ATUSB_REQ_FROM_DEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atusb_control_msg (struct atusb*,int ,int ,int ,int ,int ,char*,scalar_t__,int) ;
 int dev_info (int *,char*,char*) ;
 int kfree (char*) ;
 char* kmalloc (scalar_t__,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int atusb_get_and_show_build(struct atusb *atusb)
{
 struct usb_device *usb_dev = atusb->usb_dev;
 char *build;
 int ret;

 build = kmalloc(ATUSB_BUILD_SIZE + 1, GFP_KERNEL);
 if (!build)
  return -ENOMEM;

 ret = atusb_control_msg(atusb, usb_rcvctrlpipe(usb_dev, 0),
    ATUSB_BUILD, ATUSB_REQ_FROM_DEV, 0, 0,
    build, ATUSB_BUILD_SIZE, 1000);
 if (ret >= 0) {
  build[ret] = 0;
  dev_info(&usb_dev->dev, "Firmware: build %s\n", build);
 }

 kfree(build);
 return ret;
}
