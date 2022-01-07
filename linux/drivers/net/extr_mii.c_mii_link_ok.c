
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_if_info {int (* mdio_read ) (int ,int ,int ) ;int phy_id; int dev; } ;


 int BMSR_LSTATUS ;
 int MII_BMSR ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;

int mii_link_ok (struct mii_if_info *mii)
{

 mii->mdio_read(mii->dev, mii->phy_id, MII_BMSR);
 if (mii->mdio_read(mii->dev, mii->phy_id, MII_BMSR) & BMSR_LSTATUS)
  return 1;
 return 0;
}
