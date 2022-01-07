
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isc_clk {int parent_id; } ;
struct clk_hw {int dummy; } ;


 struct isc_clk* to_isc_clk (struct clk_hw*) ;

__attribute__((used)) static u8 isc_clk_get_parent(struct clk_hw *hw)
{
 struct isc_clk *isc_clk = to_isc_clk(hw);

 return isc_clk->parent_id;
}
