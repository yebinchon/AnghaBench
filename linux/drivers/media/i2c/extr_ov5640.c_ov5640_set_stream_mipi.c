
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5640_dev {int dummy; } ;


 int OV5640_REG_FRAME_CTRL01 ;
 int OV5640_REG_IO_MIPI_CTRL00 ;
 int ov5640_write_reg (struct ov5640_dev*,int ,int) ;

__attribute__((used)) static int ov5640_set_stream_mipi(struct ov5640_dev *sensor, bool on)
{
 int ret;
 ret = ov5640_write_reg(sensor, OV5640_REG_IO_MIPI_CTRL00,
          on ? 0x45 : 0x40);
 if (ret)
  return ret;

 return ov5640_write_reg(sensor, OV5640_REG_FRAME_CTRL01,
    on ? 0x00 : 0x0f);
}
