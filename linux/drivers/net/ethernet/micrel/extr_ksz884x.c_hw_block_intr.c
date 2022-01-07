
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct ksz_hw {int intr_blocked; } ;


 int hw_dis_intr (struct ksz_hw*) ;

__attribute__((used)) static uint hw_block_intr(struct ksz_hw *hw)
{
 uint interrupt = 0;

 if (!hw->intr_blocked) {
  hw_dis_intr(hw);
  interrupt = hw->intr_blocked;
 }
 return interrupt;
}
