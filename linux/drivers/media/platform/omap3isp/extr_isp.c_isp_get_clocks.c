
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {struct clk** clock; int dev; } ;
struct clk {int dummy; } ;


 unsigned int ARRAY_SIZE (int *) ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int dev_err (int ,char*,int ) ;
 struct clk* devm_clk_get (int ,int ) ;
 int * isp_clocks ;

__attribute__((used)) static int isp_get_clocks(struct isp_device *isp)
{
 struct clk *clk;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(isp_clocks); ++i) {
  clk = devm_clk_get(isp->dev, isp_clocks[i]);
  if (IS_ERR(clk)) {
   dev_err(isp->dev, "clk_get %s failed\n", isp_clocks[i]);
   return PTR_ERR(clk);
  }

  isp->clock[i] = clk;
 }

 return 0;
}
