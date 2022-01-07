
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct dvb_usb_device {int dummy; } ;


 scalar_t__ APO_REG_I2C_RW_SILICON_TUNER ;
 int ETIMEDOUT ;
 int af9005_read_ofdm_register (struct dvb_usb_device*,int,int*) ;
 int af9005_usb_read_tuner_registers (struct dvb_usb_device*,scalar_t__,int*,int) ;
 int af9005_write_ofdm_register (struct dvb_usb_device*,int ,int) ;
 int af9005_write_tuner_registers (struct dvb_usb_device*,int,int*,int) ;
 int msleep (int) ;
 int xd_I2C_i2c_m_data8 ;

int af9005_read_tuner_registers(struct dvb_usb_device *d, u16 reg, u8 addr,
    u8 * values, int len)
{



 int ret, i;
 u8 temp, buf[2];

 buf[0] = addr;
 buf[1] = values[0];

 values[0] = addr + 0x01;

 if (reg == APO_REG_I2C_RW_SILICON_TUNER) {

  ret = af9005_write_tuner_registers(d, 0x00c0, buf, 2);
  if (ret)
   return ret;
 }


 ret = af9005_usb_read_tuner_registers(d, reg, values, 1);
 if (ret)
  return ret;


 for (i = 0; i < 200; i++) {
  ret = af9005_read_ofdm_register(d, 0xa408, &temp);
  if (ret)
   return ret;
  if (temp & 0x01)
   break;
  msleep(50);
 }
 if (i == 200)
  return -ETIMEDOUT;


 ret = af9005_write_ofdm_register(d, xd_I2C_i2c_m_data8, 1);
 if (ret)
  return ret;


 for (i = 0; i < len; i++) {
  ret = af9005_read_ofdm_register(d, 0xa400 + i, &temp);
  if (ret)
   return ret;
  values[i] = temp;
 }
 return 0;
}
