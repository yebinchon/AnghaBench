
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct ksz_hw {scalar_t__ io; int intr_set; } ;


 scalar_t__ KS884X_INTERRUPTS_ENABLE ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void hw_set_intr(struct ksz_hw *hw, uint interrupt)
{
 hw->intr_set = interrupt;
 writel(interrupt, hw->io + KS884X_INTERRUPTS_ENABLE);
}
