
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int AEL2005_GPIO_CTRL ;
 int MDIO_MMD_PMAPMD ;
 int t3_mdio_write (struct cphy*,int ,int ,int) ;
 int t3_phy_lasi_intr_enable (struct cphy*) ;

__attribute__((used)) static int ael2005_intr_enable(struct cphy *phy)
{
 int err = t3_mdio_write(phy, MDIO_MMD_PMAPMD, AEL2005_GPIO_CTRL, 0x200);
 return err ? err : t3_phy_lasi_intr_enable(phy);
}
