
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isc_clk {scalar_t__ id; int dev; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ ISC_ISPCK ;
 int isc_wait_clk_stable (struct clk_hw*) ;
 int pm_runtime_put_sync (int ) ;
 struct isc_clk* to_isc_clk (struct clk_hw*) ;

__attribute__((used)) static void isc_clk_unprepare(struct clk_hw *hw)
{
 struct isc_clk *isc_clk = to_isc_clk(hw);

 isc_wait_clk_stable(hw);

 if (isc_clk->id == ISC_ISPCK)
  pm_runtime_put_sync(isc_clk->dev);
}
