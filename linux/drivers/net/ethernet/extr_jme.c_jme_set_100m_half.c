
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int phy_id; } ;
struct jme_adapter {scalar_t__ fpgaver; TYPE_1__ mii_if; int dev; } ;


 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 int GHC_LINK_POLL ;
 int GHC_SPEED_100M ;
 int JME_GHC ;
 int MII_BMCR ;
 int jme_mdio_read (int ,int ,int ) ;
 int jme_mdio_write (int ,int ,int ,int) ;
 int jme_phy_on (struct jme_adapter*) ;
 int jwrite32 (struct jme_adapter*,int ,int) ;

__attribute__((used)) static void
jme_set_100m_half(struct jme_adapter *jme)
{
 u32 bmcr, tmp;

 jme_phy_on(jme);
 bmcr = jme_mdio_read(jme->dev, jme->mii_if.phy_id, MII_BMCR);
 tmp = bmcr & ~(BMCR_ANENABLE | BMCR_SPEED100 |
         BMCR_SPEED1000 | BMCR_FULLDPLX);
 tmp |= BMCR_SPEED100;

 if (bmcr != tmp)
  jme_mdio_write(jme->dev, jme->mii_if.phy_id, MII_BMCR, tmp);

 if (jme->fpgaver)
  jwrite32(jme, JME_GHC, GHC_SPEED_100M | GHC_LINK_POLL);
 else
  jwrite32(jme, JME_GHC, GHC_SPEED_100M);
}
