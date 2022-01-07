
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isc_clk {scalar_t__ id; int dev; int regmap; } ;
struct clk_hw {int dummy; } ;


 int ISC_CLK (scalar_t__) ;
 int ISC_CLKSR ;
 scalar_t__ ISC_ISPCK ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int regmap_read (int ,int ,int*) ;
 struct isc_clk* to_isc_clk (struct clk_hw*) ;

__attribute__((used)) static int isc_clk_is_enabled(struct clk_hw *hw)
{
 struct isc_clk *isc_clk = to_isc_clk(hw);
 u32 status;

 if (isc_clk->id == ISC_ISPCK)
  pm_runtime_get_sync(isc_clk->dev);

 regmap_read(isc_clk->regmap, ISC_CLKSR, &status);

 if (isc_clk->id == ISC_ISPCK)
  pm_runtime_put_sync(isc_clk->dev);

 return status & ISC_CLK(isc_clk->id) ? 1 : 0;
}
