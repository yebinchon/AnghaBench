
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ov5640_dev {int dummy; } ;


 int ov5640_write_reg (struct ov5640_dev*,int,int) ;

__attribute__((used)) static int ov5640_write_reg16(struct ov5640_dev *sensor, u16 reg, u16 val)
{
 int ret;

 ret = ov5640_write_reg(sensor, reg, val >> 8);
 if (ret)
  return ret;

 return ov5640_write_reg(sensor, reg + 1, val & 0xff);
}
