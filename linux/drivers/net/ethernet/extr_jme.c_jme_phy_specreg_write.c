
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int phy_id; } ;
struct jme_adapter {TYPE_1__ mii_if; int dev; } ;


 int JM_PHY_SPEC_ADDR_REG ;
 int JM_PHY_SPEC_DATA_REG ;
 int JM_PHY_SPEC_REG_WRITE ;
 int jme_mdio_write (int ,int ,int ,int) ;

__attribute__((used)) static void
jme_phy_specreg_write(struct jme_adapter *jme, u32 ext_reg, u32 phy_data)
{
 u32 phy_addr;

 phy_addr = JM_PHY_SPEC_REG_WRITE | ext_reg;
 jme_mdio_write(jme->dev, jme->mii_if.phy_id, JM_PHY_SPEC_DATA_REG,
   phy_data);
 jme_mdio_write(jme->dev, jme->mii_if.phy_id, JM_PHY_SPEC_ADDR_REG,
   phy_addr);
}
