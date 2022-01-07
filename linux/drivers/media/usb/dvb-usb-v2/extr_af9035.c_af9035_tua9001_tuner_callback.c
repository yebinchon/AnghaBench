
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_interface {int dev; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;




 int af9035_wr_reg_mask (struct dvb_usb_device*,int,int,int) ;
 int dev_dbg (int *,char*,int,...) ;

__attribute__((used)) static int af9035_tua9001_tuner_callback(struct dvb_usb_device *d,
  int cmd, int arg)
{
 struct usb_interface *intf = d->intf;
 int ret;
 u8 val;

 dev_dbg(&intf->dev, "cmd=%d arg=%d\n", cmd, arg);







 switch (cmd) {
 case 129:
  if (arg)
   val = 0x00;
  else
   val = 0x01;

  ret = af9035_wr_reg_mask(d, 0x00d8e7, val, 0x01);
  if (ret < 0)
   goto err;
  break;
 case 128:
  if (arg)
   val = 0x01;
  else
   val = 0x00;

  ret = af9035_wr_reg_mask(d, 0x00d8eb, val, 0x01);
  if (ret < 0)
   goto err;
  break;
 }

 return 0;

err:
 dev_dbg(&intf->dev, "failed=%d\n", ret);

 return ret;
}
