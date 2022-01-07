
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct ksz_hw {int intr_set; scalar_t__ io; } ;


 scalar_t__ KS884X_INTERRUPTS_STATUS ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline void hw_read_intr(struct ksz_hw *hw, uint *status)
{
 *status = readl(hw->io + KS884X_INTERRUPTS_STATUS);
 *status = *status & hw->intr_set;
}
