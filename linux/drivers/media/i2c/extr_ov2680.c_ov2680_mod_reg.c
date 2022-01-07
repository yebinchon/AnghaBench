
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ov2680_dev {int dummy; } ;


 int ov2680_read_reg (struct ov2680_dev*,int ,int *) ;
 int ov2680_write_reg (struct ov2680_dev*,int ,int ) ;

__attribute__((used)) static int ov2680_mod_reg(struct ov2680_dev *sensor, u16 reg, u8 mask, u8 val)
{
 u32 readval;
 int ret;

 ret = ov2680_read_reg(sensor, reg, &readval);
 if (ret < 0)
  return ret;

 readval &= ~mask;
 val &= mask;
 val |= readval;

 return ov2680_write_reg(sensor, reg, val);
}
