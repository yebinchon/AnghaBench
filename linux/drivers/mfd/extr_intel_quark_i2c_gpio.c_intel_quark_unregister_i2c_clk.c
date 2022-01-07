
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_quark_mfd {int i2c_clk; int i2c_clk_lookup; } ;
struct device {int dummy; } ;


 int clk_unregister (int ) ;
 int clkdev_drop (int ) ;
 struct intel_quark_mfd* dev_get_drvdata (struct device*) ;

__attribute__((used)) static void intel_quark_unregister_i2c_clk(struct device *dev)
{
 struct intel_quark_mfd *quark_mfd = dev_get_drvdata(dev);

 if (!quark_mfd->i2c_clk_lookup)
  return;

 clkdev_drop(quark_mfd->i2c_clk_lookup);
 clk_unregister(quark_mfd->i2c_clk);
}
