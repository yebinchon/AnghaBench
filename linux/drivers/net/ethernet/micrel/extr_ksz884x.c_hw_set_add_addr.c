
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int * address; scalar_t__ io; } ;


 int ADDITIONAL_ENTRIES ;
 int ADD_ADDR_INCR ;
 scalar_t__ KS_ADD_ADDR_0_HI ;
 scalar_t__ empty_addr (int ) ;
 int hw_ena_add_addr (struct ksz_hw*,int,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void hw_set_add_addr(struct ksz_hw *hw)
{
 int i;

 for (i = 0; i < ADDITIONAL_ENTRIES; i++) {
  if (empty_addr(hw->address[i]))
   writel(0, hw->io + ADD_ADDR_INCR * i +
    KS_ADD_ADDR_0_HI);
  else
   hw_ena_add_addr(hw, i, hw->address[i]);
 }
}
