
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ov7251 {int xclk_freq; int enable_gpio; int dev; int xclk; } ;


 int DIV_ROUND_UP (int,int) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int ov7251_regulators_disable (struct ov7251*) ;
 int ov7251_regulators_enable (struct ov7251*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ov7251_set_power_on(struct ov7251 *ov7251)
{
 int ret;
 u32 wait_us;

 ret = ov7251_regulators_enable(ov7251);
 if (ret < 0)
  return ret;

 ret = clk_prepare_enable(ov7251->xclk);
 if (ret < 0) {
  dev_err(ov7251->dev, "clk prepare enable failed\n");
  ov7251_regulators_disable(ov7251);
  return ret;
 }

 gpiod_set_value_cansleep(ov7251->enable_gpio, 1);


 wait_us = DIV_ROUND_UP(65536 * 1000,
          DIV_ROUND_UP(ov7251->xclk_freq, 1000));
 usleep_range(wait_us, wait_us + 1000);

 return 0;
}
