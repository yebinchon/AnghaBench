
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int af9005_read_ofdm_register (struct dvb_usb_device*,int ,int*) ;
 int deb_reg (char*,...) ;
 int* regmask ;

int af9005_read_register_bits(struct dvb_usb_device *d, u16 reg, u8 pos,
         u8 len, u8 * value)
{
 u8 temp;
 int ret;
 deb_reg("read bits %x %x %x", reg, pos, len);
 ret = af9005_read_ofdm_register(d, reg, &temp);
 if (ret) {
  deb_reg(" failed\n");
  return ret;
 }
 *value = (temp >> pos) & regmask[len - 1];
 deb_reg(" value %x\n", *value);
 return 0;

}
