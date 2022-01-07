
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int E1000_ICH_FWSM_PCIM2PCI ;
 scalar_t__ E1000_ICH_FWSM_PCIM2PCI_COUNT ;
 int FWSM ;
 int er32 (int ) ;
 int udelay (int) ;

s32 __ew32_prepare(struct e1000_hw *hw)
{
 s32 i = E1000_ICH_FWSM_PCIM2PCI_COUNT;

 while ((er32(FWSM) & E1000_ICH_FWSM_PCIM2PCI) && --i)
  udelay(50);

 return i;
}
