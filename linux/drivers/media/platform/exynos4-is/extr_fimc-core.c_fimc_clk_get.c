
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fimc_dev {TYPE_1__* pdev; void** clock; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENXIO ;
 void* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (void*) ;
 int MAX_FIMC_CLOCKS ;
 int PTR_ERR (void*) ;
 void* clk_get (int *,int ) ;
 int clk_prepare (void*) ;
 int clk_put (void*) ;
 int dev_err (int *,char*,int ) ;
 int fimc_clk_put (struct fimc_dev*) ;
 int * fimc_clocks ;

__attribute__((used)) static int fimc_clk_get(struct fimc_dev *fimc)
{
 int i, ret;

 for (i = 0; i < MAX_FIMC_CLOCKS; i++)
  fimc->clock[i] = ERR_PTR(-EINVAL);

 for (i = 0; i < MAX_FIMC_CLOCKS; i++) {
  fimc->clock[i] = clk_get(&fimc->pdev->dev, fimc_clocks[i]);
  if (IS_ERR(fimc->clock[i])) {
   ret = PTR_ERR(fimc->clock[i]);
   goto err;
  }
  ret = clk_prepare(fimc->clock[i]);
  if (ret < 0) {
   clk_put(fimc->clock[i]);
   fimc->clock[i] = ERR_PTR(-EINVAL);
   goto err;
  }
 }
 return 0;
err:
 fimc_clk_put(fimc);
 dev_err(&fimc->pdev->dev, "failed to get clock: %s\n",
  fimc_clocks[i]);
 return -ENXIO;
}
