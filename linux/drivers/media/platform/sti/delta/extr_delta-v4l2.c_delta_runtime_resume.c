
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct delta_dev {scalar_t__ clk_delta; } ;


 scalar_t__ clk_prepare_enable (scalar_t__) ;
 struct delta_dev* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;

__attribute__((used)) static int delta_runtime_resume(struct device *dev)
{
 struct delta_dev *delta = dev_get_drvdata(dev);

 if (delta->clk_delta)
  if (clk_prepare_enable(delta->clk_delta))
   dev_warn(dev, "failed to prepare/enable delta clk\n");

 return 0;
}
