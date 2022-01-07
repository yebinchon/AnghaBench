
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_quark_mfd {struct clk* i2c_clk; int i2c_clk_lookup; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;


 int ENOMEM ;
 int INTEL_QUARK_I2C_CLK_HZ ;
 int INTEL_QUARK_I2C_CONTROLLER_CLK ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* clk_register_fixed_rate (struct device*,int ,int *,int ,int ) ;
 int clk_unregister (struct clk*) ;
 int clkdev_create (struct clk*,int *,int ) ;
 int dev_err (struct device*,char*) ;
 struct intel_quark_mfd* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int intel_quark_register_i2c_clk(struct device *dev)
{
 struct intel_quark_mfd *quark_mfd = dev_get_drvdata(dev);
 struct clk *i2c_clk;

 i2c_clk = clk_register_fixed_rate(dev,
       INTEL_QUARK_I2C_CONTROLLER_CLK, ((void*)0),
       0, INTEL_QUARK_I2C_CLK_HZ);
 if (IS_ERR(i2c_clk))
  return PTR_ERR(i2c_clk);

 quark_mfd->i2c_clk = i2c_clk;
 quark_mfd->i2c_clk_lookup = clkdev_create(i2c_clk, ((void*)0),
      INTEL_QUARK_I2C_CONTROLLER_CLK);

 if (!quark_mfd->i2c_clk_lookup) {
  clk_unregister(quark_mfd->i2c_clk);
  dev_err(dev, "Fixed clk register failed\n");
  return -ENOMEM;
 }

 return 0;
}
