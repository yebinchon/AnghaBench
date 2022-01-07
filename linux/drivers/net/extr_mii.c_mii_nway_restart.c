
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_if_info {int (* mdio_read ) (int ,int ,int ) ;int phy_id; int dev; int (* mdio_write ) (int ,int ,int ,int) ;} ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int EINVAL ;
 int MII_BMCR ;
 int stub1 (int ,int ,int ) ;
 int stub2 (int ,int ,int ,int) ;

int mii_nway_restart (struct mii_if_info *mii)
{
 int bmcr;
 int r = -EINVAL;


 bmcr = mii->mdio_read(mii->dev, mii->phy_id, MII_BMCR);

 if (bmcr & BMCR_ANENABLE) {
  bmcr |= BMCR_ANRESTART;
  mii->mdio_write(mii->dev, mii->phy_id, MII_BMCR, bmcr);
  r = 0;
 }

 return r;
}
