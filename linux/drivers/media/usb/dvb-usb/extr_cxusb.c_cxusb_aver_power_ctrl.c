
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {scalar_t__ state; int udev; } ;


 int ARRAY_SIZE (int const*) ;
 int CMD_I2C_WRITE ;
 int CMD_POWER_OFF ;
 int CMD_POWER_ON ;
 scalar_t__ DVB_USB_STATE_INIT ;
 int EREMOTEIO ;
 int cxusb_ctrl_msg (struct dvb_usb_device*,int,int const*,int,int*,int) ;
 int err (char*) ;
 int msleep (int) ;
 scalar_t__ usb_set_interface (int ,int ,int ) ;

__attribute__((used)) static int cxusb_aver_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 int ret;

 if (!onoff)
  return cxusb_ctrl_msg(d, CMD_POWER_OFF, ((void*)0), 0, ((void*)0), 0);
 if (d->state == DVB_USB_STATE_INIT &&
     usb_set_interface(d->udev, 0, 0) < 0)
  err("set interface failed");
 do {

 } while (!(ret = cxusb_ctrl_msg(d, CMD_POWER_ON, ((void*)0), 0, ((void*)0), 0)) &&
   !(ret = cxusb_ctrl_msg(d, 0x15, ((void*)0), 0, ((void*)0), 0)) &&
   !(ret = cxusb_ctrl_msg(d, 0x17, ((void*)0), 0, ((void*)0), 0)) && 0);

 if (!ret) {




  int i;
  u8 buf;
  static const u8 bufs[] = {
   0x0e, 0x2, 0x00, 0x7f,
   0x0e, 0x2, 0x02, 0xfe,
   0x0e, 0x2, 0x02, 0x01,
   0x0e, 0x2, 0x00, 0x03,
   0x0e, 0x2, 0x0d, 0x40,
   0x0e, 0x2, 0x0e, 0x87,
   0x0e, 0x2, 0x0f, 0x8e,
   0x0e, 0x2, 0x10, 0x01,
   0x0e, 0x2, 0x14, 0xd7,
   0x0e, 0x2, 0x47, 0x88,
  };
  msleep(20);
  for (i = 0; i < ARRAY_SIZE(bufs); i += 4 / sizeof(u8)) {
   ret = cxusb_ctrl_msg(d, CMD_I2C_WRITE,
          bufs + i, 4, &buf, 1);
   if (ret)
    break;
   if (buf != 0x8)
    return -EREMOTEIO;
  }
 }
 return ret;
}
