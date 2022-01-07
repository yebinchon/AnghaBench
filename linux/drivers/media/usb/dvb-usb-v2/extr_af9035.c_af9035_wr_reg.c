
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dvb_usb_device {int dummy; } ;


 int af9035_wr_regs (struct dvb_usb_device*,int ,int *,int) ;

__attribute__((used)) static int af9035_wr_reg(struct dvb_usb_device *d, u32 reg, u8 val)
{
 return af9035_wr_regs(d, reg, &val, 1);
}
