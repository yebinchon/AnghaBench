
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ BMSR_ANEGCOMPLETE ;
 int MII_BMSR ;
 scalar_t__ PHY_AUTO_NEG_LIMIT ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,scalar_t__*) ;
 int msleep (int) ;

__attribute__((used)) static s32 e1000_wait_autoneg(struct e1000_hw *hw)
{
 s32 ret_val = 0;
 u16 i, phy_status;


 for (i = PHY_AUTO_NEG_LIMIT; i > 0; i--) {
  ret_val = e1e_rphy(hw, MII_BMSR, &phy_status);
  if (ret_val)
   break;
  ret_val = e1e_rphy(hw, MII_BMSR, &phy_status);
  if (ret_val)
   break;
  if (phy_status & BMSR_ANEGCOMPLETE)
   break;
  msleep(100);
 }




 return ret_val;
}
