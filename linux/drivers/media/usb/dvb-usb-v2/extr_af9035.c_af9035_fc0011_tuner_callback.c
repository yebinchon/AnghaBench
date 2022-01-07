
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;


 int EINVAL ;


 int af9035_wr_reg (struct dvb_usb_device*,int,int) ;
 int af9035_wr_reg_mask (struct dvb_usb_device*,int,int,int) ;
 int dev_dbg (int *,char*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int af9035_fc0011_tuner_callback(struct dvb_usb_device *d,
  int cmd, int arg)
{
 struct usb_interface *intf = d->intf;
 int ret;

 switch (cmd) {
 case 129:

  ret = af9035_wr_reg_mask(d, 0xd8eb, 1, 1);
  if (ret < 0)
   goto err;

  ret = af9035_wr_reg_mask(d, 0xd8ec, 1, 1);
  if (ret < 0)
   goto err;

  ret = af9035_wr_reg_mask(d, 0xd8ed, 1, 1);
  if (ret < 0)
   goto err;


  ret = af9035_wr_reg_mask(d, 0xd8d0, 1, 1);
  if (ret < 0)
   goto err;

  ret = af9035_wr_reg_mask(d, 0xd8d1, 1, 1);
  if (ret < 0)
   goto err;

  usleep_range(10000, 50000);
  break;
 case 128:
  ret = af9035_wr_reg(d, 0xd8e9, 1);
  if (ret < 0)
   goto err;

  ret = af9035_wr_reg(d, 0xd8e8, 1);
  if (ret < 0)
   goto err;

  ret = af9035_wr_reg(d, 0xd8e7, 1);
  if (ret < 0)
   goto err;

  usleep_range(10000, 20000);

  ret = af9035_wr_reg(d, 0xd8e7, 0);
  if (ret < 0)
   goto err;

  usleep_range(10000, 20000);
  break;
 default:
  ret = -EINVAL;
  goto err;
 }

 return 0;

err:
 dev_dbg(&intf->dev, "failed=%d\n", ret);

 return ret;
}
