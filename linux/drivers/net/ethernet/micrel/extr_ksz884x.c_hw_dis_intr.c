
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {scalar_t__ io; int intr_set; int intr_mask; int intr_blocked; } ;


 scalar_t__ KS884X_INTERRUPTS_ENABLE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void hw_dis_intr(struct ksz_hw *hw)
{
 hw->intr_blocked = hw->intr_mask;
 writel(0, hw->io + KS884X_INTERRUPTS_ENABLE);
 hw->intr_set = readl(hw->io + KS884X_INTERRUPTS_ENABLE);
}
