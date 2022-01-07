
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atl1c_hw {int dummy; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_RESET ;
 int MII_BMCR ;
 int atl1c_phy_setup_adv (struct atl1c_hw*) ;
 int atl1c_write_phy_reg (struct atl1c_hw*,int ,int) ;

int atl1c_restart_autoneg(struct atl1c_hw *hw)
{
 int err = 0;
 u16 mii_bmcr_data = BMCR_RESET;

 err = atl1c_phy_setup_adv(hw);
 if (err)
  return err;
 mii_bmcr_data |= BMCR_ANENABLE | BMCR_ANRESTART;

 return atl1c_write_phy_reg(hw, MII_BMCR, mii_bmcr_data);
}
