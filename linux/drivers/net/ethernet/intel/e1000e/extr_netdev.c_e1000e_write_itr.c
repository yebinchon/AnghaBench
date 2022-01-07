
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {scalar_t__ hw_addr; } ;
struct e1000_adapter {int num_vectors; scalar_t__ msix_entries; struct e1000_hw hw; } ;


 scalar_t__ E1000_EITR_82574 (int) ;
 int ITR ;
 int ew32 (int ,int) ;
 int writel (int,scalar_t__) ;

void e1000e_write_itr(struct e1000_adapter *adapter, u32 itr)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 new_itr = itr ? 1000000000 / (itr * 256) : 0;

 if (adapter->msix_entries) {
  int vector;

  for (vector = 0; vector < adapter->num_vectors; vector++)
   writel(new_itr, hw->hw_addr + E1000_EITR_82574(vector));
 } else {
  ew32(ITR, new_itr);
 }
}
