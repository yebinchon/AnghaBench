
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_hw {int dummy; } ;
struct cam_clk {TYPE_1__* fmd; } ;
struct TYPE_2__ {int * pmf; } ;


 int ENODEV ;
 int pm_runtime_get_sync (int *) ;
 struct cam_clk* to_cam_clk (struct clk_hw*) ;

__attribute__((used)) static int cam_clk_prepare(struct clk_hw *hw)
{
 struct cam_clk *camclk = to_cam_clk(hw);
 int ret;

 if (camclk->fmd->pmf == ((void*)0))
  return -ENODEV;

 ret = pm_runtime_get_sync(camclk->fmd->pmf);
 return ret < 0 ? ret : 0;
}
