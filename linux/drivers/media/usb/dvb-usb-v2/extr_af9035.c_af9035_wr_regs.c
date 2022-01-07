
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wbuf ;
typedef int u8 ;
typedef int u32 ;
struct usb_req {int member_1; int member_2; int* member_3; int * member_5; int member_4; int member_0; } ;
struct usb_interface {int dev; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;


 int CMD_MEM_WR ;
 int EOPNOTSUPP ;
 int MAX_XFER_SIZE ;
 int af9035_ctrl_msg (struct dvb_usb_device*,struct usb_req*) ;
 int dev_warn (int *,char*,int) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static int af9035_wr_regs(struct dvb_usb_device *d, u32 reg, u8 *val, int len)
{
 struct usb_interface *intf = d->intf;
 u8 wbuf[MAX_XFER_SIZE];
 u8 mbox = (reg >> 16) & 0xff;
 struct usb_req req = { CMD_MEM_WR, mbox, 6 + len, wbuf, 0, ((void*)0) };

 if (6 + len > sizeof(wbuf)) {
  dev_warn(&intf->dev, "i2c wr: len=%d is too big!\n", len);
  return -EOPNOTSUPP;
 }

 wbuf[0] = len;
 wbuf[1] = 2;
 wbuf[2] = 0;
 wbuf[3] = 0;
 wbuf[4] = (reg >> 8) & 0xff;
 wbuf[5] = (reg >> 0) & 0xff;
 memcpy(&wbuf[6], val, len);

 return af9035_ctrl_msg(d, &req);
}
