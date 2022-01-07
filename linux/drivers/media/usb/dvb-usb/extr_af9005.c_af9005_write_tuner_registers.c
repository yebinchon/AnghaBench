
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int EIO ;
 int ETIMEDOUT ;
 int af9005_read_ofdm_register (struct dvb_usb_device*,int ,int*) ;
 int af9005_usb_write_tuner_registers (struct dvb_usb_device*,int,int*,int) ;
 int af9005_write_register_bits (struct dvb_usb_device*,int ,int,int,int) ;
 int i2c_m_status_wdat_done_len ;
 int i2c_m_status_wdat_done_pos ;
 int i2c_m_status_wdat_fail_len ;
 int i2c_m_status_wdat_fail_pos ;
 int msleep (int) ;
 int* regmask ;
 int xd_I2C_i2c_m_status_wdat_done ;
 int xd_I2C_i2c_m_status_wdat_fail ;

int af9005_write_tuner_registers(struct dvb_usb_device *d, u16 reg,
     u8 * values, int len)
{



 int ret, i, done = 0, fail = 0;
 u8 temp;
 ret = af9005_usb_write_tuner_registers(d, reg, values, len);
 if (ret)
  return ret;
 if (reg != 0xffff) {

  for (i = 0; i < 200; i++) {
   ret =
       af9005_read_ofdm_register(d,
            xd_I2C_i2c_m_status_wdat_done,
            &temp);
   if (ret)
    return ret;
   done = temp & (regmask[i2c_m_status_wdat_done_len - 1]
           << i2c_m_status_wdat_done_pos);
   if (done)
    break;
   fail = temp & (regmask[i2c_m_status_wdat_fail_len - 1]
           << i2c_m_status_wdat_fail_pos);
   if (fail)
    break;
   msleep(50);
  }
  if (i == 200)
   return -ETIMEDOUT;
  if (fail) {

   af9005_write_register_bits(d,
         xd_I2C_i2c_m_status_wdat_fail,
         i2c_m_status_wdat_fail_pos,
         i2c_m_status_wdat_fail_len,
         1);
   return -EIO;
  }

  ret =
      af9005_write_register_bits(d,
            xd_I2C_i2c_m_status_wdat_fail,
            i2c_m_status_wdat_done_pos,
            i2c_m_status_wdat_done_len, 1);
  if (ret)
   return ret;
 }
 return 0;
}
