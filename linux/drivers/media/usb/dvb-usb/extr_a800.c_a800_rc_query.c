
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int rc_dev; int udev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RC_PROTO_NEC ;
 int RC_SCANCODE_NEC (int,int) ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int rc_keydown (int ,int ,int ,int ) ;
 int rc_repeat (int ) ;
 int usb_control_msg (int ,int ,int,int,int ,int ,int*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int a800_rc_query(struct dvb_usb_device *d)
{
 int ret = 0;
 u8 *key = kmalloc(5, GFP_KERNEL);
 if (!key)
  return -ENOMEM;

 if (usb_control_msg(d->udev,usb_rcvctrlpipe(d->udev,0),
    0x04, USB_TYPE_VENDOR | USB_DIR_IN, 0, 0, key, 5,
    2000) != 5) {
  ret = -ENODEV;
  goto out;
 }


 if (key[0] == 1)
  rc_keydown(d->rc_dev, RC_PROTO_NEC,
      RC_SCANCODE_NEC(key[1], key[3]), 0);
 else if (key[0] == 2)
  rc_repeat(d->rc_dev);
out:
 kfree(key);
 return ret;
}
