
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ov5640_dev {int dummy; } ;


 int OV5640_REG_AEC_PK_EXPOSURE_HI ;
 int OV5640_REG_AEC_PK_EXPOSURE_LO ;
 int OV5640_REG_AEC_PK_EXPOSURE_MED ;
 int ov5640_read_reg (struct ov5640_dev*,int ,scalar_t__*) ;

__attribute__((used)) static int ov5640_get_exposure(struct ov5640_dev *sensor)
{
 int exp, ret;
 u8 temp;

 ret = ov5640_read_reg(sensor, OV5640_REG_AEC_PK_EXPOSURE_HI, &temp);
 if (ret)
  return ret;
 exp = ((int)temp & 0x0f) << 16;
 ret = ov5640_read_reg(sensor, OV5640_REG_AEC_PK_EXPOSURE_MED, &temp);
 if (ret)
  return ret;
 exp |= ((int)temp << 8);
 ret = ov5640_read_reg(sensor, OV5640_REG_AEC_PK_EXPOSURE_LO, &temp);
 if (ret)
  return ret;
 exp |= (int)temp;

 return exp >> 4;
}
