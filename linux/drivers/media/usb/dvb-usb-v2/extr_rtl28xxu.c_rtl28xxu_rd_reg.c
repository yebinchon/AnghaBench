
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int rtl28xxu_rd_regs (struct dvb_usb_device*,int ,int *,int) ;

__attribute__((used)) static int rtl28xxu_rd_reg(struct dvb_usb_device *d, u16 reg, u8 *val)
{
 return rtl28xxu_rd_regs(d, reg, val, 1);
}
