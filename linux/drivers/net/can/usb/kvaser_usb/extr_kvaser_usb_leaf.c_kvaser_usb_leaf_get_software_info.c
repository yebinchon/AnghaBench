
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvaser_usb {int dummy; } ;


 int ETIMEDOUT ;
 int kvaser_usb_leaf_get_software_info_inner (struct kvaser_usb*) ;

__attribute__((used)) static int kvaser_usb_leaf_get_software_info(struct kvaser_usb *dev)
{
 int err;
 int retry = 3;






 do {
  err = kvaser_usb_leaf_get_software_info_inner(dev);
 } while (--retry && err == -ETIMEDOUT);

 return err;
}
