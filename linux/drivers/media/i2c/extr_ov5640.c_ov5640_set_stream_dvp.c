
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {unsigned int flags; } ;
struct TYPE_5__ {TYPE_1__ parallel; } ;
struct TYPE_6__ {TYPE_2__ bus; } ;
struct ov5640_dev {TYPE_3__ ep; } ;


 int OV5640_REG_IO_MIPI_CTRL00 ;
 int OV5640_REG_PAD_OUTPUT_ENABLE01 ;
 int OV5640_REG_PAD_OUTPUT_ENABLE02 ;
 int OV5640_REG_POLARITY_CTRL00 ;
 unsigned int V4L2_MBUS_HSYNC_ACTIVE_HIGH ;
 unsigned int V4L2_MBUS_PCLK_SAMPLE_RISING ;
 unsigned int V4L2_MBUS_VSYNC_ACTIVE_LOW ;
 int ov5640_write_reg (struct ov5640_dev*,int ,int) ;

__attribute__((used)) static int ov5640_set_stream_dvp(struct ov5640_dev *sensor, bool on)
{
 int ret;
 unsigned int flags = sensor->ep.bus.parallel.flags;
 u8 pclk_pol = 0;
 u8 hsync_pol = 0;
 u8 vsync_pol = 0;
 if (on) {
  if (flags & V4L2_MBUS_PCLK_SAMPLE_RISING)
   pclk_pol = 1;
  if (flags & V4L2_MBUS_HSYNC_ACTIVE_HIGH)
   hsync_pol = 1;
  if (flags & V4L2_MBUS_VSYNC_ACTIVE_LOW)
   vsync_pol = 1;

  ret = ov5640_write_reg(sensor,
           OV5640_REG_POLARITY_CTRL00,
           (pclk_pol << 5) |
           (hsync_pol << 1) |
           vsync_pol);

  if (ret)
   return ret;
 }
 ret = ov5640_write_reg(sensor,
          OV5640_REG_IO_MIPI_CTRL00, on ? 0x18 : 0);
 if (ret)
  return ret;
 ret = ov5640_write_reg(sensor,
          OV5640_REG_PAD_OUTPUT_ENABLE01,
          on ? 0x7f : 0);
 if (ret)
  return ret;







 return ov5640_write_reg(sensor,
    OV5640_REG_PAD_OUTPUT_ENABLE02,
    on ? 0xfc : 0);
}
