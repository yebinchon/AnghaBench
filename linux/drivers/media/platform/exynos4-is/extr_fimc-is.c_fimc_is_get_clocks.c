
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fimc_is {TYPE_1__* pdev; int * clocks; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ERR_PTR (int ) ;
 int ISS_CLKS_MAX ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_get (int *,int ) ;
 int dev_err (int *,char*,int ) ;
 int * fimc_is_clocks ;
 int fimc_is_put_clocks (struct fimc_is*) ;

__attribute__((used)) static int fimc_is_get_clocks(struct fimc_is *is)
{
 int i, ret;

 for (i = 0; i < ISS_CLKS_MAX; i++)
  is->clocks[i] = ERR_PTR(-EINVAL);

 for (i = 0; i < ISS_CLKS_MAX; i++) {
  is->clocks[i] = clk_get(&is->pdev->dev, fimc_is_clocks[i]);
  if (IS_ERR(is->clocks[i])) {
   ret = PTR_ERR(is->clocks[i]);
   goto err;
  }
 }

 return 0;
err:
 fimc_is_put_clocks(is);
 dev_err(&is->pdev->dev, "failed to get clock: %s\n",
  fimc_is_clocks[i]);
 return ret;
}
