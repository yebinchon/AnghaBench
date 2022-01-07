
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ov5640_dev {int dummy; } ;


 int OV5640_REG_AEC_CTRL00 ;
 int ov5640_read_reg (struct ov5640_dev*,int ,int*) ;
 int ov5640_write_reg (struct ov5640_dev*,int ,int) ;

__attribute__((used)) static int ov5640_set_night_mode(struct ov5640_dev *sensor)
{

 u8 mode;
 int ret;

 ret = ov5640_read_reg(sensor, OV5640_REG_AEC_CTRL00, &mode);
 if (ret)
  return ret;
 mode &= 0xfb;
 return ov5640_write_reg(sensor, OV5640_REG_AEC_CTRL00, mode);
}
