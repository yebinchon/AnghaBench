
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct delta_dev {scalar_t__ clk_delta; } ;


 int clk_disable_unprepare (scalar_t__) ;
 struct delta_dev* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int delta_runtime_suspend(struct device *dev)
{
 struct delta_dev *delta = dev_get_drvdata(dev);

 if (delta->clk_delta)
  clk_disable_unprepare(delta->clk_delta);

 return 0;
}
