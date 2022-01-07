
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ov5640_dev {int dummy; } ;


 int OV5640_REG_AEC_PK_REAL_GAIN ;
 int ov5640_read_reg16 (struct ov5640_dev*,int ,int*) ;

__attribute__((used)) static int ov5640_get_gain(struct ov5640_dev *sensor)
{
 u16 gain;
 int ret;

 ret = ov5640_read_reg16(sensor, OV5640_REG_AEC_PK_REAL_GAIN, &gain);
 if (ret)
  return ret;

 return gain & 0x3ff;
}
