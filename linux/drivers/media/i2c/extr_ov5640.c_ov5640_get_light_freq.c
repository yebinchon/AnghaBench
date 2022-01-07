
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ov5640_dev {int dummy; } ;


 int OV5640_REG_HZ5060_CTRL00 ;
 int OV5640_REG_HZ5060_CTRL01 ;
 int OV5640_REG_SIGMADELTA_CTRL0C ;
 int ov5640_read_reg (struct ov5640_dev*,int ,int*) ;

__attribute__((used)) static int ov5640_get_light_freq(struct ov5640_dev *sensor)
{

 int ret, light_freq = 0;
 u8 temp, temp1;

 ret = ov5640_read_reg(sensor, OV5640_REG_HZ5060_CTRL01, &temp);
 if (ret)
  return ret;

 if (temp & 0x80) {

  ret = ov5640_read_reg(sensor, OV5640_REG_HZ5060_CTRL00,
          &temp1);
  if (ret)
   return ret;
  if (temp1 & 0x04) {

   light_freq = 50;
  } else {

   light_freq = 60;
  }
 } else {

  ret = ov5640_read_reg(sensor, OV5640_REG_SIGMADELTA_CTRL0C,
          &temp1);
  if (ret)
   return ret;

  if (temp1 & 0x01) {

   light_freq = 50;
  } else {

  }
 }

 return light_freq;
}
