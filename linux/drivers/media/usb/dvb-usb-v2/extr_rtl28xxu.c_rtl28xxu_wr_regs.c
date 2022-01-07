
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtl28xxu_req {int value; int size; int * data; int index; } ;
struct dvb_usb_device {int dummy; } ;


 int CMD_IR_WR ;
 int CMD_SYS_WR ;
 int CMD_USB_WR ;
 int rtl28xxu_ctrl_msg (struct dvb_usb_device*,struct rtl28xxu_req*) ;

__attribute__((used)) static int rtl28xxu_wr_regs(struct dvb_usb_device *d, u16 reg, u8 *val, int len)
{
 struct rtl28xxu_req req;

 if (reg < 0x3000)
  req.index = CMD_USB_WR;
 else if (reg < 0x4000)
  req.index = CMD_SYS_WR;
 else
  req.index = CMD_IR_WR;

 req.value = reg;
 req.size = len;
 req.data = val;

 return rtl28xxu_ctrl_msg(d, &req);
}
