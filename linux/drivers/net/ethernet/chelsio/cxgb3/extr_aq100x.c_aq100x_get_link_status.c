
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int AQ_ANEG_STAT ;
 int AQ_LINK_STAT ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int MDIO_MMD_AN ;
 int MDIO_MMD_PMAPMD ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_10000 ;
 int t3_mdio_read (struct cphy*,int ,int ,unsigned int*) ;

__attribute__((used)) static int aq100x_get_link_status(struct cphy *phy, int *link_ok,
      int *speed, int *duplex, int *fc)
{
 int err;
 unsigned int v;

 if (link_ok) {
  err = t3_mdio_read(phy, MDIO_MMD_PMAPMD, AQ_LINK_STAT, &v);
  if (err)
   return err;

  *link_ok = v & 1;
  if (!*link_ok)
   return 0;
 }

 err = t3_mdio_read(phy, MDIO_MMD_AN, AQ_ANEG_STAT, &v);
 if (err)
  return err;

 if (speed) {
  switch (v & 0x6) {
  case 0x6:
   *speed = SPEED_10000;
   break;
  case 0x4:
   *speed = SPEED_1000;
   break;
  case 0x2:
   *speed = SPEED_100;
   break;
  case 0x0:
   *speed = SPEED_10;
   break;
  }
 }

 if (duplex)
  *duplex = v & 1 ? DUPLEX_FULL : DUPLEX_HALF;

 return 0;
}
