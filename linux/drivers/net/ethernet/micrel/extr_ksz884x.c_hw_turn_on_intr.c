
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ksz_hw {int intr_mask; int intr_blocked; } ;


 int hw_set_intr (struct ksz_hw*,int ) ;

__attribute__((used)) static void hw_turn_on_intr(struct ksz_hw *hw, u32 bit)
{
 hw->intr_mask |= bit;

 if (!hw->intr_blocked)
  hw_set_intr(hw, hw->intr_mask);
}
