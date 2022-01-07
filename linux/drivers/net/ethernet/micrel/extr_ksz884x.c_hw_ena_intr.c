
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int intr_mask; scalar_t__ intr_blocked; } ;


 int hw_set_intr (struct ksz_hw*,int ) ;

__attribute__((used)) static inline void hw_ena_intr(struct ksz_hw *hw)
{
 hw->intr_blocked = 0;
 hw_set_intr(hw, hw->intr_mask);
}
