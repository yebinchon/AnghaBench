
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov2680_dev {int is_enabled; int xvclk; int reset_gpio; int supplies; } ;
struct device {int dummy; } ;


 int OV2680_NUM_SUPPLIES ;
 int OV2680_REG_SOFT_RESET ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,...) ;
 int ov2680_power_down (struct ov2680_dev*) ;
 int ov2680_power_up (struct ov2680_dev*) ;
 int ov2680_stream_disable (struct ov2680_dev*) ;
 int ov2680_stream_enable (struct ov2680_dev*) ;
 struct device* ov2680_to_dev (struct ov2680_dev*) ;
 int ov2680_write_reg (struct ov2680_dev*,int ,int) ;
 int regulator_bulk_enable (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ov2680_power_on(struct ov2680_dev *sensor)
{
 struct device *dev = ov2680_to_dev(sensor);
 int ret;

 if (sensor->is_enabled)
  return 0;

 ret = regulator_bulk_enable(OV2680_NUM_SUPPLIES, sensor->supplies);
 if (ret < 0) {
  dev_err(dev, "failed to enable regulators: %d\n", ret);
  return ret;
 }

 if (!sensor->reset_gpio) {
  ret = ov2680_write_reg(sensor, OV2680_REG_SOFT_RESET, 0x01);
  if (ret != 0) {
   dev_err(dev, "sensor soft reset failed\n");
   return ret;
  }
  usleep_range(1000, 2000);
 } else {
  ov2680_power_down(sensor);
  ov2680_power_up(sensor);
 }

 ret = clk_prepare_enable(sensor->xvclk);
 if (ret < 0)
  return ret;

 sensor->is_enabled = 1;


 ov2680_stream_enable(sensor);
 usleep_range(1000, 2000);
 ov2680_stream_disable(sensor);

 return 0;
}
