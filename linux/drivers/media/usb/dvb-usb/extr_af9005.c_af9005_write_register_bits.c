
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int af9005_read_ofdm_register (struct dvb_usb_device*,int ,int*) ;
 int af9005_write_ofdm_register (struct dvb_usb_device*,int ,int) ;
 int deb_reg (char*,int ,int,int,int) ;
 int* regmask ;

int af9005_write_register_bits(struct dvb_usb_device *d, u16 reg, u8 pos,
          u8 len, u8 value)
{
 u8 temp, mask;
 int ret;
 deb_reg("write bits %x %x %x value %x\n", reg, pos, len, value);
 if (pos == 0 && len == 8)
  return af9005_write_ofdm_register(d, reg, value);
 ret = af9005_read_ofdm_register(d, reg, &temp);
 if (ret)
  return ret;
 mask = regmask[len - 1] << pos;
 temp = (temp & ~mask) | ((value << pos) & mask);
 return af9005_write_ofdm_register(d, reg, temp);

}
