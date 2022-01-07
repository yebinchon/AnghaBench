
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_lpss {int clk; int clock; } ;


 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int clkdev_drop (int ) ;
 int intel_lpss_unregister_clock_tree (int ) ;

__attribute__((used)) static void intel_lpss_unregister_clock(struct intel_lpss *lpss)
{
 if (IS_ERR_OR_NULL(lpss->clk))
  return;

 clkdev_drop(lpss->clock);
 intel_lpss_unregister_clock_tree(lpss->clk);
}
