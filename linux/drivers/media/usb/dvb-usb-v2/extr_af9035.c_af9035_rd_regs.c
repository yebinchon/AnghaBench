
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wbuf ;
typedef int u8 ;
typedef int u32 ;
struct usb_req {int member_1; int member_2; int* member_3; int member_4; int* member_5; int member_0; } ;
struct dvb_usb_device {int dummy; } ;


 int CMD_MEM_RD ;
 int af9035_ctrl_msg (struct dvb_usb_device*,struct usb_req*) ;

__attribute__((used)) static int af9035_rd_regs(struct dvb_usb_device *d, u32 reg, u8 *val, int len)
{
 u8 wbuf[] = { len, 2, 0, 0, (reg >> 8) & 0xff, reg & 0xff };
 u8 mbox = (reg >> 16) & 0xff;
 struct usb_req req = { CMD_MEM_RD, mbox, sizeof(wbuf), wbuf, len, val };

 return af9035_ctrl_msg(d, &req);
}
