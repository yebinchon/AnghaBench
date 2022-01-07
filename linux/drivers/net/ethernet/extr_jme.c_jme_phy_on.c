
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int phy_id; } ;
struct jme_adapter {int chip_main_rev; TYPE_1__ mii_if; int dev; } ;


 int BMCR_PDOWN ;
 int MII_BMCR ;
 int jme_mdio_read (int ,int ,int ) ;
 int jme_mdio_write (int ,int ,int ,int ) ;
 int jme_new_phy_on (struct jme_adapter*) ;
 scalar_t__ new_phy_power_ctrl (int ) ;

__attribute__((used)) static inline void
jme_phy_on(struct jme_adapter *jme)
{
 u32 bmcr;

 bmcr = jme_mdio_read(jme->dev, jme->mii_if.phy_id, MII_BMCR);
 bmcr &= ~BMCR_PDOWN;
 jme_mdio_write(jme->dev, jme->mii_if.phy_id, MII_BMCR, bmcr);

 if (new_phy_power_ctrl(jme->chip_main_rev))
  jme_new_phy_on(jme);
}
