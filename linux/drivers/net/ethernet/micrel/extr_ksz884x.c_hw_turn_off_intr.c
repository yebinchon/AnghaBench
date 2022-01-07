
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;
struct ksz_hw {int intr_set; scalar_t__ io; } ;


 scalar_t__ KS884X_INTERRUPTS_ENABLE ;
 int hw_dis_intr_bit (struct ksz_hw*,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void hw_turn_off_intr(struct ksz_hw *hw, uint interrupt)
{
 u32 read_intr;

 read_intr = readl(hw->io + KS884X_INTERRUPTS_ENABLE);
 hw->intr_set = read_intr & ~interrupt;
 writel(hw->intr_set, hw->io + KS884X_INTERRUPTS_ENABLE);
 hw_dis_intr_bit(hw, interrupt);
}
