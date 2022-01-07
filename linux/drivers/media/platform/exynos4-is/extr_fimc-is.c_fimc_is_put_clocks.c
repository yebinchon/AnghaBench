
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_is {int * clocks; } ;


 int EINVAL ;
 int ERR_PTR (int ) ;
 int ISS_CLKS_MAX ;
 scalar_t__ IS_ERR (int ) ;
 int clk_put (int ) ;

__attribute__((used)) static void fimc_is_put_clocks(struct fimc_is *is)
{
 int i;

 for (i = 0; i < ISS_CLKS_MAX; i++) {
  if (IS_ERR(is->clocks[i]))
   continue;
  clk_put(is->clocks[i]);
  is->clocks[i] = ERR_PTR(-EINVAL);
 }
}
