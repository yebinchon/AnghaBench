
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev; } ;
struct alx_hw {int duplex; int link_speed; struct pci_dev* pdev; } ;





 int ALX_GIGA_PSSR_DPLX ;
 int ALX_GIGA_PSSR_SPD_DPLX_RESOLVED ;
 int ALX_GIGA_PSSR_SPEED ;
 int ALX_MII_GIGA_PSSR ;
 int BMSR_LSTATUS ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int DUPLEX_UNKNOWN ;
 int EINVAL ;
 int MII_BMSR ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_UNKNOWN ;
 int alx_read_phy_reg (struct alx_hw*,int ,int*) ;
 int dev_err (int *,char*,int) ;

int alx_read_phy_link(struct alx_hw *hw)
{
 struct pci_dev *pdev = hw->pdev;
 u16 bmsr, giga;
 int err;

 err = alx_read_phy_reg(hw, MII_BMSR, &bmsr);
 if (err)
  return err;

 err = alx_read_phy_reg(hw, MII_BMSR, &bmsr);
 if (err)
  return err;

 if (!(bmsr & BMSR_LSTATUS)) {
  hw->link_speed = SPEED_UNKNOWN;
  hw->duplex = DUPLEX_UNKNOWN;
  return 0;
 }


 err = alx_read_phy_reg(hw, ALX_MII_GIGA_PSSR, &giga);
 if (err)
  return err;

 if (!(giga & ALX_GIGA_PSSR_SPD_DPLX_RESOLVED))
  goto wrong_speed;

 switch (giga & ALX_GIGA_PSSR_SPEED) {
 case 130:
  hw->link_speed = SPEED_1000;
  break;
 case 129:
  hw->link_speed = SPEED_100;
  break;
 case 128:
  hw->link_speed = SPEED_10;
  break;
 default:
  goto wrong_speed;
 }

 hw->duplex = (giga & ALX_GIGA_PSSR_DPLX) ? DUPLEX_FULL : DUPLEX_HALF;
 return 0;

wrong_speed:
 dev_err(&pdev->dev, "invalid PHY speed/duplex: 0x%x\n", giga);
 return -EINVAL;
}
