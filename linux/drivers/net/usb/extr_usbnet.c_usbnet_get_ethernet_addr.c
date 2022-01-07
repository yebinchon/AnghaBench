
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbnet {TYPE_2__* udev; TYPE_1__* net; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int dev_addr; } ;


 int EINVAL ;
 int dev_dbg (int *,char*,int,int) ;
 int hex2bin (int ,unsigned char*,int) ;
 int usb_string (TYPE_2__*,int,unsigned char*,int) ;

int usbnet_get_ethernet_addr(struct usbnet *dev, int iMACAddress)
{
 int tmp = -1, ret;
 unsigned char buf [13];

 ret = usb_string(dev->udev, iMACAddress, buf, sizeof buf);
 if (ret == 12)
  tmp = hex2bin(dev->net->dev_addr, buf, 6);
 if (tmp < 0) {
  dev_dbg(&dev->udev->dev,
   "bad MAC string %d fetch, %d\n", iMACAddress, tmp);
  if (ret >= 0)
   ret = -EINVAL;
  return ret;
 }
 return 0;
}
