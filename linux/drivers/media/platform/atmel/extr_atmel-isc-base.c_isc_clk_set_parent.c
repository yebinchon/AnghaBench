
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct isc_clk {scalar_t__ parent_id; } ;
struct clk_hw {int dummy; } ;


 int EINVAL ;
 scalar_t__ clk_hw_get_num_parents (struct clk_hw*) ;
 struct isc_clk* to_isc_clk (struct clk_hw*) ;

__attribute__((used)) static int isc_clk_set_parent(struct clk_hw *hw, u8 index)
{
 struct isc_clk *isc_clk = to_isc_clk(hw);

 if (index >= clk_hw_get_num_parents(hw))
  return -EINVAL;

 isc_clk->parent_id = index;

 return 0;
}
