
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_resources {unsigned int clks_num; int * clks; } ;
struct venus_core {int * clks; struct device* dev; struct venus_resources* res; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_clk_get (struct device*,int ) ;

__attribute__((used)) static int venus_clks_get(struct venus_core *core)
{
 const struct venus_resources *res = core->res;
 struct device *dev = core->dev;
 unsigned int i;

 for (i = 0; i < res->clks_num; i++) {
  core->clks[i] = devm_clk_get(dev, res->clks[i]);
  if (IS_ERR(core->clks[i]))
   return PTR_ERR(core->clks[i]);
 }

 return 0;
}
