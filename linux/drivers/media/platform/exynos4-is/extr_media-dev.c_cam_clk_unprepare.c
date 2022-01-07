
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct cam_clk {TYPE_1__* fmd; } ;
struct TYPE_2__ {int * pmf; } ;


 int pm_runtime_put_sync (int *) ;
 struct cam_clk* to_cam_clk (struct clk_hw*) ;

__attribute__((used)) static void cam_clk_unprepare(struct clk_hw *hw)
{
 struct cam_clk *camclk = to_cam_clk(hw);

 if (camclk->fmd->pmf == ((void*)0))
  return;

 pm_runtime_put_sync(camclk->fmd->pmf);
}
