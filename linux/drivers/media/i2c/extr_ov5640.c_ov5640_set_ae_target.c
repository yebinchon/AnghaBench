
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ov5640_dev {int ae_low; int ae_high; } ;


 int OV5640_REG_AEC_CTRL0F ;
 int OV5640_REG_AEC_CTRL10 ;
 int OV5640_REG_AEC_CTRL11 ;
 int OV5640_REG_AEC_CTRL1B ;
 int OV5640_REG_AEC_CTRL1E ;
 int OV5640_REG_AEC_CTRL1F ;
 int ov5640_write_reg (struct ov5640_dev*,int ,int) ;

__attribute__((used)) static int ov5640_set_ae_target(struct ov5640_dev *sensor, int target)
{

 u32 fast_high, fast_low;
 int ret;

 sensor->ae_low = target * 23 / 25;
 sensor->ae_high = target * 27 / 25;

 fast_high = sensor->ae_high << 1;
 if (fast_high > 255)
  fast_high = 255;

 fast_low = sensor->ae_low >> 1;

 ret = ov5640_write_reg(sensor, OV5640_REG_AEC_CTRL0F, sensor->ae_high);
 if (ret)
  return ret;
 ret = ov5640_write_reg(sensor, OV5640_REG_AEC_CTRL10, sensor->ae_low);
 if (ret)
  return ret;
 ret = ov5640_write_reg(sensor, OV5640_REG_AEC_CTRL1B, sensor->ae_high);
 if (ret)
  return ret;
 ret = ov5640_write_reg(sensor, OV5640_REG_AEC_CTRL1E, sensor->ae_low);
 if (ret)
  return ret;
 ret = ov5640_write_reg(sensor, OV5640_REG_AEC_CTRL11, fast_high);
 if (ret)
  return ret;
 return ov5640_write_reg(sensor, OV5640_REG_AEC_CTRL1F, fast_low);
}
