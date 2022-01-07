
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5640_mode_info {int vact; int hact; } ;
struct ov5640_dev {int dummy; } ;


 int OV5640_REG_JPG_MODE_SELECT ;
 int OV5640_REG_VFIFO_HSIZE ;
 int OV5640_REG_VFIFO_VSIZE ;
 int ov5640_mod_reg (struct ov5640_dev*,int ,int,int) ;
 int ov5640_write_reg16 (struct ov5640_dev*,int ,int ) ;

__attribute__((used)) static int ov5640_set_jpeg_timings(struct ov5640_dev *sensor,
       const struct ov5640_mode_info *mode)
{
 int ret;
 ret = ov5640_mod_reg(sensor, OV5640_REG_JPG_MODE_SELECT, 0x7, 0x3);
 if (ret < 0)
  return ret;

 ret = ov5640_write_reg16(sensor, OV5640_REG_VFIFO_HSIZE, mode->hact);
 if (ret < 0)
  return ret;

 return ov5640_write_reg16(sensor, OV5640_REG_VFIFO_VSIZE, mode->vact);
}
