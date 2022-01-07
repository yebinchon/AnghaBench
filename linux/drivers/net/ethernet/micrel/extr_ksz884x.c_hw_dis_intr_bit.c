
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct ksz_hw {int intr_mask; } ;



__attribute__((used)) static inline void hw_dis_intr_bit(struct ksz_hw *hw, uint bit)
{
 hw->intr_mask &= ~(bit);
}
