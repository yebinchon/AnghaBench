
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_if_info {int (* mdio_read ) (int ,int ,int ) ;int phy_id; int dev; } ;


 int BMSR_ESTATEN ;
 int ESTATUS_1000_TFULL ;
 int ESTATUS_1000_THALF ;
 int MII_BMSR ;
 int MII_ESTATUS ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;

int mii_check_gmii_support(struct mii_if_info *mii)
{
 int reg;

 reg = mii->mdio_read(mii->dev, mii->phy_id, MII_BMSR);
 if (reg & BMSR_ESTATEN) {
  reg = mii->mdio_read(mii->dev, mii->phy_id, MII_ESTATUS);
  if (reg & (ESTATUS_1000_TFULL | ESTATUS_1000_THALF))
   return 1;
 }

 return 0;
}
