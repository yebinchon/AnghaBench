
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usb_interface {int dev; } ;
struct req_t {int member_2; unsigned int const member_5; int* member_6; int member_4; int member_3; int member_1; int member_0; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;


 int WRITE_MEMORY ;
 int af9015_ctrl_msg (struct dvb_usb_device*,struct req_t*) ;
 int dev_dbg (int *,char*,int) ;

__attribute__((used)) static int af9015_regmap_write(void *context, const void *data, size_t count)
{
 struct dvb_usb_device *d = context;
 struct usb_interface *intf = d->intf;
 int ret;
 u16 reg = ((u8 *)data)[0] << 8 | ((u8 *)data)[1] << 0;
 u8 *val = &((u8 *)data)[2];
 const unsigned int len = count - 2;
 struct req_t req = {WRITE_MEMORY, 0, reg, 0, 0, len, val};

 ret = af9015_ctrl_msg(d, &req);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&intf->dev, "failed %d\n", ret);
 return ret;
}
