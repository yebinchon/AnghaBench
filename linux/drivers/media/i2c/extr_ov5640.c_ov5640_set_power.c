
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bus_type; } ;
struct ov5640_dev {TYPE_1__ ep; } ;


 int OV5640_REG_IO_MIPI_CTRL00 ;
 int OV5640_REG_MIPI_CTRL00 ;
 int OV5640_REG_PAD_OUTPUT00 ;
 scalar_t__ V4L2_MBUS_CSI2_DPHY ;
 int ov5640_restore_mode (struct ov5640_dev*) ;
 int ov5640_set_power_off (struct ov5640_dev*) ;
 int ov5640_set_power_on (struct ov5640_dev*) ;
 int ov5640_write_reg (struct ov5640_dev*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ov5640_set_power(struct ov5640_dev *sensor, bool on)
{
 int ret = 0;

 if (on) {
  ret = ov5640_set_power_on(sensor);
  if (ret)
   return ret;

  ret = ov5640_restore_mode(sensor);
  if (ret)
   goto power_off;


  if (sensor->ep.bus_type != V4L2_MBUS_CSI2_DPHY)
   return 0;
  ret = ov5640_write_reg(sensor,
           OV5640_REG_IO_MIPI_CTRL00, 0x40);
  if (ret)
   goto power_off;
  ret = ov5640_write_reg(sensor,
           OV5640_REG_MIPI_CTRL00, 0x24);
  if (ret)
   goto power_off;
  ret = ov5640_write_reg(sensor,
           OV5640_REG_PAD_OUTPUT00, 0x70);
  if (ret)
   goto power_off;


  usleep_range(500, 1000);

 } else {
  if (sensor->ep.bus_type == V4L2_MBUS_CSI2_DPHY) {

   ov5640_write_reg(sensor,
      OV5640_REG_IO_MIPI_CTRL00, 0x58);
   ov5640_write_reg(sensor,
      OV5640_REG_MIPI_CTRL00, 0x04);
   ov5640_write_reg(sensor,
      OV5640_REG_PAD_OUTPUT00, 0x00);
  }

  ov5640_set_power_off(sensor);
 }

 return 0;

power_off:
 ov5640_set_power_off(sensor);
 return ret;
}
