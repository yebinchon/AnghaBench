
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ov5640_dev {int dummy; } ;


 int ov5640_read_reg (struct ov5640_dev*,int ,int *) ;
 int ov5640_write_reg (struct ov5640_dev*,int ,int ) ;

__attribute__((used)) static int ov5640_mod_reg(struct ov5640_dev *sensor, u16 reg,
     u8 mask, u8 val)
{
 u8 readval;
 int ret;

 ret = ov5640_read_reg(sensor, reg, &readval);
 if (ret)
  return ret;

 readval &= ~mask;
 val &= mask;
 val |= readval;

 return ov5640_write_reg(sensor, reg, val);
}
