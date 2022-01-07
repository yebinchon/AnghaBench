
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int MDIO_MMD_PMAPMD ;
 unsigned int MDIO_PMA_LASI_LSALARM ;
 int MDIO_PMA_LASI_STAT ;
 int cphy_cause_link_change ;
 int t3_mdio_read (struct cphy*,int ,int ,unsigned int*) ;

int t3_phy_lasi_intr_handler(struct cphy *phy)
{
 unsigned int status;
 int err = t3_mdio_read(phy, MDIO_MMD_PMAPMD, MDIO_PMA_LASI_STAT,
          &status);

 if (err)
  return err;
 return (status & MDIO_PMA_LASI_LSALARM) ? cphy_cause_link_change : 0;
}
