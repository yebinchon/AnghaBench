
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int DUPLEX_FULL ;
 int MDIO_MMD_PCS ;
 int MDIO_MMD_PHYXS ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_PCS_10GBRT_STAT1 ;
 int MDIO_PHYXS_LNSTAT ;
 int MDIO_PMA_RXDET ;
 int SPEED_10000 ;
 int t3_mdio_read (struct cphy*,int ,int ,unsigned int*) ;

__attribute__((used)) static int get_link_status_r(struct cphy *phy, int *link_ok, int *speed,
        int *duplex, int *fc)
{
 if (link_ok) {
  unsigned int stat0, stat1, stat2;
  int err = t3_mdio_read(phy, MDIO_MMD_PMAPMD,
           MDIO_PMA_RXDET, &stat0);

  if (!err)
   err = t3_mdio_read(phy, MDIO_MMD_PCS,
        MDIO_PCS_10GBRT_STAT1, &stat1);
  if (!err)
   err = t3_mdio_read(phy, MDIO_MMD_PHYXS,
        MDIO_PHYXS_LNSTAT, &stat2);
  if (err)
   return err;
  *link_ok = (stat0 & stat1 & (stat2 >> 12)) & 1;
 }
 if (speed)
  *speed = SPEED_10000;
 if (duplex)
  *duplex = DUPLEX_FULL;
 return 0;
}
