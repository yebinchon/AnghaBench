
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int AQ_IMASK_GLOBAL ;
 int AQ_IMASK_PMA ;
 int IMASK_GLOBAL ;
 int IMASK_PMA ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_MMD_VEND1 ;
 int t3_mdio_write (struct cphy*,int ,int ,int ) ;

__attribute__((used)) static int aq100x_intr_enable(struct cphy *phy)
{
 int err = t3_mdio_write(phy, MDIO_MMD_PMAPMD, AQ_IMASK_PMA, IMASK_PMA);
 if (err)
  return err;

 err = t3_mdio_write(phy, MDIO_MMD_VEND1, AQ_IMASK_GLOBAL, IMASK_GLOBAL);
 return err;
}
