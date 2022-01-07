
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct dvb_usb_device {TYPE_2__* udev; } ;
struct TYPE_3__ {int idProduct; } ;
struct TYPE_4__ {TYPE_1__ descriptor; } ;


 int BOOT_8PSK ;
 int EINVAL ;
 int USB_PID_GENPIX_8PSK_REV_1_WARM ;
 int deb_xfer (char*) ;
 scalar_t__ gp8psk_load_bcm4500fw (struct dvb_usb_device*) ;
 scalar_t__ gp8psk_usb_in_op (struct dvb_usb_device*,int ,int,int ,int *,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int gp8psk_bcm4500_reload(struct dvb_usb_device *d)
{
 u8 buf;
 int gp_product_id = le16_to_cpu(d->udev->descriptor.idProduct);

 deb_xfer("reloading firmware\n");


 if (gp8psk_usb_in_op(d, BOOT_8PSK, 0, 0, &buf, 1))
  return -EINVAL;

 if (gp8psk_usb_in_op(d, BOOT_8PSK, 1, 0, &buf, 1))
  return -EINVAL;

 if (gp_product_id == USB_PID_GENPIX_8PSK_REV_1_WARM)
  if (gp8psk_load_bcm4500fw(d))
   return -EINVAL;
 return 0;
}
