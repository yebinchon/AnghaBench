
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ov5640_dev {int dummy; } ;


 int BIT (int ) ;
 int OV5640_REG_TIMING_TC_REG21 ;
 int ov5640_read_reg (struct ov5640_dev*,int ,int*) ;

__attribute__((used)) static int ov5640_get_binning(struct ov5640_dev *sensor)
{
 u8 temp;
 int ret;

 ret = ov5640_read_reg(sensor, OV5640_REG_TIMING_TC_REG21, &temp);
 if (ret)
  return ret;

 return temp & BIT(0);
}
