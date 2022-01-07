
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int EINVAL ;
 int af9005_read_ofdm_register (struct dvb_usb_device*,int,int*) ;
 int err (char*) ;

__attribute__((used)) static int af9005_read_word_agc(struct dvb_usb_device *d, u16 reghi,
    u16 reglo, u8 pos, u8 len, u16 * value)
{
 int ret;
 u8 temp0, temp1;

 if ((ret = af9005_read_ofdm_register(d, reglo, &temp0)))
  return ret;
 if ((ret = af9005_read_ofdm_register(d, reghi, &temp1)))
  return ret;
 switch (pos) {
 case 0:
  *value = ((u16) (temp1 & 0x03) << 8) + (u16) temp0;
  break;
 case 2:
  *value = ((u16) (temp1 & 0x0C) << 6) + (u16) temp0;
  break;
 case 4:
  *value = ((u16) (temp1 & 0x30) << 4) + (u16) temp0;
  break;
 case 6:
  *value = ((u16) (temp1 & 0xC0) << 2) + (u16) temp0;
  break;
 default:
  err("invalid pos in read word agc");
  return -EINVAL;
 }
 return 0;

}
