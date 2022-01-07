
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fimc_lite {int clock; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int FLITE_CLK_NAME ;
 int PTR_ERR_OR_ZERO (int ) ;
 int clk_get (int *,int ) ;

__attribute__((used)) static int fimc_lite_clk_get(struct fimc_lite *fimc)
{
 fimc->clock = clk_get(&fimc->pdev->dev, FLITE_CLK_NAME);
 return PTR_ERR_OR_ZERO(fimc->clock);
}
