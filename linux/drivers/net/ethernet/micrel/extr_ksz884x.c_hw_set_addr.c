
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int * override_addr; scalar_t__ io; } ;


 int ETH_ALEN ;
 scalar_t__ KS884X_ADDR_0_OFFSET ;
 size_t MAC_ADDR_ORDER (int) ;
 int sw_set_addr (struct ksz_hw*,int *) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void hw_set_addr(struct ksz_hw *hw)
{
 int i;

 for (i = 0; i < ETH_ALEN; i++)
  writeb(hw->override_addr[MAC_ADDR_ORDER(i)],
   hw->io + KS884X_ADDR_0_OFFSET + i);

 sw_set_addr(hw, hw->override_addr);
}
