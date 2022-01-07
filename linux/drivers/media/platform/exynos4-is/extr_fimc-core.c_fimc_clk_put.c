
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_dev {int * clock; } ;


 int EINVAL ;
 int ERR_PTR (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_FIMC_CLOCKS ;
 int clk_put (int ) ;
 int clk_unprepare (int ) ;

__attribute__((used)) static void fimc_clk_put(struct fimc_dev *fimc)
{
 int i;
 for (i = 0; i < MAX_FIMC_CLOCKS; i++) {
  if (IS_ERR(fimc->clock[i]))
   continue;
  clk_unprepare(fimc->clock[i]);
  clk_put(fimc->clock[i]);
  fimc->clock[i] = ERR_PTR(-EINVAL);
 }
}
