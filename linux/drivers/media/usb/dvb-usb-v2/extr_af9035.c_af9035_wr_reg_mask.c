
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dvb_usb_device {int dummy; } ;


 int af9035_rd_regs (struct dvb_usb_device*,int ,int*,int) ;
 int af9035_wr_regs (struct dvb_usb_device*,int ,int*,int) ;

__attribute__((used)) static int af9035_wr_reg_mask(struct dvb_usb_device *d, u32 reg, u8 val,
  u8 mask)
{
 int ret;
 u8 tmp;


 if (mask != 0xff) {
  ret = af9035_rd_regs(d, reg, &tmp, 1);
  if (ret)
   return ret;

  val &= mask;
  tmp &= ~mask;
  val |= tmp;
 }

 return af9035_wr_regs(d, reg, &val, 1);
}
