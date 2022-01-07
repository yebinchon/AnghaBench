
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbnet {TYPE_2__* udev; TYPE_1__* net; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int dev_addr; } ;


 int dev_info (int *,char*) ;
 int mcs7830_hif_set_mac_address (struct usbnet*,int ) ;
 int mcs7830_hif_update_config (struct usbnet*) ;
 int mcs7830_hif_update_multicast_hash (struct usbnet*) ;
 int mcs7830_rev_C_fixup (struct usbnet*) ;
 int mcs7830_set_autoneg (struct usbnet*,int ) ;

__attribute__((used)) static int mcs7830_apply_base_config(struct usbnet *dev)
{
 int ret;


 ret = mcs7830_hif_set_mac_address(dev, dev->net->dev_addr);
 if (ret) {
  dev_info(&dev->udev->dev, "Cannot set MAC address\n");
  goto out;
 }


 ret = mcs7830_set_autoneg(dev, 0);
 if (ret) {
  dev_info(&dev->udev->dev, "Cannot set autoneg\n");
  goto out;
 }

 mcs7830_hif_update_multicast_hash(dev);
 mcs7830_hif_update_config(dev);

 mcs7830_rev_C_fixup(dev);
 ret = 0;
out:
 return ret;
}
