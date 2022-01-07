
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int mmds; } ;
struct alx_hw {TYPE_1__ mdio; int * phy_id; } ;


 int MDIO_DEVS1 ;
 int MDIO_DEVS2 ;
 int MII_PHYSID1 ;
 int MII_PHYSID2 ;
 scalar_t__ alx_read_phy_ext (struct alx_hw*,int,int ,int*) ;
 scalar_t__ alx_read_phy_reg (struct alx_hw*,int ,int *) ;

bool alx_get_phy_info(struct alx_hw *hw)
{
 u16 devs1, devs2;

 if (alx_read_phy_reg(hw, MII_PHYSID1, &hw->phy_id[0]) ||
     alx_read_phy_reg(hw, MII_PHYSID2, &hw->phy_id[1]))
  return 0;





 if (alx_read_phy_ext(hw, 3, MDIO_DEVS1, &devs1) ||
     alx_read_phy_ext(hw, 3, MDIO_DEVS2, &devs2))
  return 0;
 hw->mdio.mmds = devs1 | devs2 << 16;

 return 1;
}
