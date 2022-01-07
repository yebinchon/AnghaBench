
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_ring {int tail; struct e1000_adapter* adapter; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int reset_task; struct e1000_hw hw; } ;
typedef int s32 ;


 int E1000_TCTL_EN ;
 int TCTL ;
 int __ew32_prepare (struct e1000_hw*) ;
 int e_err (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 unsigned int readl (int ) ;
 int schedule_work (int *) ;
 scalar_t__ unlikely (int) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void e1000e_update_tdt_wa(struct e1000_ring *tx_ring, unsigned int i)
{
 struct e1000_adapter *adapter = tx_ring->adapter;
 struct e1000_hw *hw = &adapter->hw;
 s32 ret_val = __ew32_prepare(hw);

 writel(i, tx_ring->tail);

 if (unlikely(!ret_val && (i != readl(tx_ring->tail)))) {
  u32 tctl = er32(TCTL);

  ew32(TCTL, tctl & ~E1000_TCTL_EN);
  e_err("ME firmware caused invalid TDT - resetting\n");
  schedule_work(&adapter->reset_task);
 }
}
