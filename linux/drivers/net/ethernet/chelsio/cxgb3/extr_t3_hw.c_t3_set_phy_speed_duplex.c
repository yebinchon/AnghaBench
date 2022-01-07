
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 unsigned int BMCR_ANENABLE ;
 unsigned int BMCR_FULLDPLX ;
 unsigned int BMCR_SPEED100 ;
 unsigned int BMCR_SPEED1000 ;
 int DUPLEX_FULL ;
 int MDIO_DEVAD_NONE ;
 int MII_BMCR ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int t3_mdio_read (struct cphy*,int ,int ,unsigned int*) ;
 int t3_mdio_write (struct cphy*,int ,int ,unsigned int) ;

int t3_set_phy_speed_duplex(struct cphy *phy, int speed, int duplex)
{
 int err;
 unsigned int ctl;

 err = t3_mdio_read(phy, MDIO_DEVAD_NONE, MII_BMCR, &ctl);
 if (err)
  return err;

 if (speed >= 0) {
  ctl &= ~(BMCR_SPEED100 | BMCR_SPEED1000 | BMCR_ANENABLE);
  if (speed == SPEED_100)
   ctl |= BMCR_SPEED100;
  else if (speed == SPEED_1000)
   ctl |= BMCR_SPEED1000;
 }
 if (duplex >= 0) {
  ctl &= ~(BMCR_FULLDPLX | BMCR_ANENABLE);
  if (duplex == DUPLEX_FULL)
   ctl |= BMCR_FULLDPLX;
 }
 if (ctl & BMCR_SPEED1000)
  ctl |= BMCR_ANENABLE;
 return t3_mdio_write(phy, MDIO_DEVAD_NONE, MII_BMCR, ctl);
}
