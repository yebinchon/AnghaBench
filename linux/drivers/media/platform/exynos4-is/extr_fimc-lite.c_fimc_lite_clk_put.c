
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_lite {int clock; } ;


 int EINVAL ;
 int ERR_PTR (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int clk_put (int ) ;

__attribute__((used)) static void fimc_lite_clk_put(struct fimc_lite *fimc)
{
 if (IS_ERR(fimc->clock))
  return;

 clk_put(fimc->clock);
 fimc->clock = ERR_PTR(-EINVAL);
}
