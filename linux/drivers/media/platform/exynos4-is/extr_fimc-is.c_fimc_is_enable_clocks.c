
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fimc_is {int * clocks; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ISS_GATE_CLKS_MAX ;
 scalar_t__ IS_ERR (int ) ;
 int clk_disable (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*,int ) ;
 int * fimc_is_clocks ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int fimc_is_enable_clocks(struct fimc_is *is)
{
 int i, ret;

 for (i = 0; i < ISS_GATE_CLKS_MAX; i++) {
  if (IS_ERR(is->clocks[i]))
   continue;
  ret = clk_prepare_enable(is->clocks[i]);
  if (ret < 0) {
   dev_err(&is->pdev->dev, "clock %s enable failed\n",
    fimc_is_clocks[i]);
   for (--i; i >= 0; i--)
    clk_disable(is->clocks[i]);
   return ret;
  }
  pr_debug("enabled clock: %s\n", fimc_is_clocks[i]);
 }
 return 0;
}
