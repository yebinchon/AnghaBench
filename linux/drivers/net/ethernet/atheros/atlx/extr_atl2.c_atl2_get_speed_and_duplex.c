
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atl2_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ ATLX_ERR_PHY_RES ;
 scalar_t__ ATLX_ERR_PHY_SPEED ;
 int FULL_DUPLEX ;
 int HALF_DUPLEX ;
 int MII_ATLX_PSSR ;


 int MII_ATLX_PSSR_DPLX ;
 int MII_ATLX_PSSR_SPD_DPLX_RESOLVED ;
 int MII_ATLX_PSSR_SPEED ;
 int SPEED_10 ;
 int SPEED_100 ;
 scalar_t__ atl2_read_phy_reg (struct atl2_hw*,int ,int*) ;

__attribute__((used)) static s32 atl2_get_speed_and_duplex(struct atl2_hw *hw, u16 *speed,
 u16 *duplex)
{
 s32 ret_val;
 u16 phy_data;


 ret_val = atl2_read_phy_reg(hw, MII_ATLX_PSSR, &phy_data);
 if (ret_val)
  return ret_val;

 if (!(phy_data & MII_ATLX_PSSR_SPD_DPLX_RESOLVED))
  return ATLX_ERR_PHY_RES;

 switch (phy_data & MII_ATLX_PSSR_SPEED) {
 case 129:
  *speed = SPEED_100;
  break;
 case 128:
  *speed = SPEED_10;
  break;
 default:
  return ATLX_ERR_PHY_SPEED;
 }

 if (phy_data & MII_ATLX_PSSR_DPLX)
  *duplex = FULL_DUPLEX;
 else
  *duplex = HALF_DUPLEX;

 return 0;
}
