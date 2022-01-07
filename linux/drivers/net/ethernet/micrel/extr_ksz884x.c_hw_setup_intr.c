
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int intr_mask; } ;


 int KS884X_INT_MASK ;
 int KS884X_INT_RX_OVERRUN ;

__attribute__((used)) static void hw_setup_intr(struct ksz_hw *hw)
{
 hw->intr_mask = KS884X_INT_MASK | KS884X_INT_RX_OVERRUN;
}
