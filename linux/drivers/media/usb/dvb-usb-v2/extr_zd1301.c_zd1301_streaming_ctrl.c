
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_interface {int dev; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct dvb_frontend {int dummy; } ;


 int dev_dbg (int *,char*,int) ;
 struct dvb_usb_device* fe_to_d (struct dvb_frontend*) ;
 int zd1301_ctrl_msg (struct dvb_usb_device*,int*,int,int *,int ) ;

__attribute__((used)) static int zd1301_streaming_ctrl(struct dvb_frontend *fe, int onoff)
{
 struct dvb_usb_device *d = fe_to_d(fe);
 struct usb_interface *intf = d->intf;
 int ret;
 u8 buf[3] = {0x03, 0x00, onoff ? 0x07 : 0x08};

 dev_dbg(&intf->dev, "onoff=%d\n", onoff);

 ret = zd1301_ctrl_msg(d, buf, 3, ((void*)0), 0);
 if (ret)
  goto err;

 return 0;
err:
 dev_dbg(&intf->dev, "failed=%d\n", ret);
 return ret;
}
