
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int (* priv ) (struct phy_device*) ;} ;


 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int MII_BMCR ;
 int MII_LXT973_PCR ;
 int PCR_FIBER_SELECT ;
 int phy_read (struct phy_device*,int ) ;
 int phy_write (struct phy_device*,int ,int) ;

__attribute__((used)) static int lxt973_probe(struct phy_device *phydev)
{
 int val = phy_read(phydev, MII_LXT973_PCR);

 if (val & PCR_FIBER_SELECT) {




  val = phy_read(phydev, MII_BMCR);
  val |= (BMCR_SPEED100 | BMCR_FULLDPLX);
  val &= ~BMCR_ANENABLE;
  phy_write(phydev, MII_BMCR, val);

  phydev->priv = lxt973_probe;
 } else {
  phydev->priv = ((void*)0);
 }
 return 0;
}
