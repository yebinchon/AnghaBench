
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ov5640_dev {int dummy; } ;


 int OV5640_REG_AEC_PK_EXPOSURE_HI ;
 int OV5640_REG_AEC_PK_EXPOSURE_LO ;
 int OV5640_REG_AEC_PK_EXPOSURE_MED ;
 int ov5640_write_reg (struct ov5640_dev*,int ,int) ;

__attribute__((used)) static int ov5640_set_exposure(struct ov5640_dev *sensor, u32 exposure)
{
 int ret;

 exposure <<= 4;

 ret = ov5640_write_reg(sensor,
          OV5640_REG_AEC_PK_EXPOSURE_LO,
          exposure & 0xff);
 if (ret)
  return ret;
 ret = ov5640_write_reg(sensor,
          OV5640_REG_AEC_PK_EXPOSURE_MED,
          (exposure >> 8) & 0xff);
 if (ret)
  return ret;
 return ov5640_write_reg(sensor,
    OV5640_REG_AEC_PK_EXPOSURE_HI,
    (exposure >> 16) & 0x0f);
}
