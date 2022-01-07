
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fimc_md {void** wbclk; TYPE_1__* camclk; } ;
struct TYPE_2__ {void* clock; } ;


 int EINVAL ;
 void* ERR_PTR (int ) ;
 int FIMC_MAX_CAMCLKS ;
 int FIMC_MAX_WBCLKS ;
 scalar_t__ IS_ERR (void*) ;
 int clk_put (void*) ;

__attribute__((used)) static void fimc_md_put_clocks(struct fimc_md *fmd)
{
 int i = FIMC_MAX_CAMCLKS;

 while (--i >= 0) {
  if (IS_ERR(fmd->camclk[i].clock))
   continue;
  clk_put(fmd->camclk[i].clock);
  fmd->camclk[i].clock = ERR_PTR(-EINVAL);
 }


 for (i = 0; i < FIMC_MAX_WBCLKS; i++) {
  if (IS_ERR(fmd->wbclk[i]))
   continue;
  clk_put(fmd->wbclk[i]);
  fmd->wbclk[i] = ERR_PTR(-EINVAL);
 }
}
