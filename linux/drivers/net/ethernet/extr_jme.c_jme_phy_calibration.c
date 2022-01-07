
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int phy_id; } ;
struct jme_adapter {TYPE_1__ mii_if; int dev; } ;


 int JM_PHY_EXT_COMM_2_CALI_ENABLE ;
 int JM_PHY_EXT_COMM_2_CALI_LATCH ;
 int JM_PHY_EXT_COMM_2_CALI_MODE_0 ;
 int JM_PHY_EXT_COMM_2_REG ;
 int MII_CTRL1000 ;
 int PHY_GAD_TEST_MODE_1 ;
 int PHY_GAD_TEST_MODE_MSK ;
 int jme_mdio_read (int ,int ,int ) ;
 int jme_mdio_write (int ,int ,int ,int) ;
 int jme_phy_off (struct jme_adapter*) ;
 int jme_phy_on (struct jme_adapter*) ;
 int jme_phy_specreg_read (struct jme_adapter*,int ) ;
 int jme_phy_specreg_write (struct jme_adapter*,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static int
jme_phy_calibration(struct jme_adapter *jme)
{
 u32 ctrl1000, phy_data;

 jme_phy_off(jme);
 jme_phy_on(jme);

 ctrl1000 = jme_mdio_read(jme->dev, jme->mii_if.phy_id, MII_CTRL1000);
 ctrl1000 &= ~PHY_GAD_TEST_MODE_MSK;
 ctrl1000 |= PHY_GAD_TEST_MODE_1;
 jme_mdio_write(jme->dev, jme->mii_if.phy_id, MII_CTRL1000, ctrl1000);

 phy_data = jme_phy_specreg_read(jme, JM_PHY_EXT_COMM_2_REG);
 phy_data &= ~JM_PHY_EXT_COMM_2_CALI_MODE_0;
 phy_data |= JM_PHY_EXT_COMM_2_CALI_LATCH |
   JM_PHY_EXT_COMM_2_CALI_ENABLE;
 jme_phy_specreg_write(jme, JM_PHY_EXT_COMM_2_REG, phy_data);
 msleep(20);
 phy_data = jme_phy_specreg_read(jme, JM_PHY_EXT_COMM_2_REG);
 phy_data &= ~(JM_PHY_EXT_COMM_2_CALI_ENABLE |
   JM_PHY_EXT_COMM_2_CALI_MODE_0 |
   JM_PHY_EXT_COMM_2_CALI_LATCH);
 jme_phy_specreg_write(jme, JM_PHY_EXT_COMM_2_REG, phy_data);


 ctrl1000 = jme_mdio_read(jme->dev, jme->mii_if.phy_id, MII_CTRL1000);
 ctrl1000 &= ~PHY_GAD_TEST_MODE_MSK;
 jme_mdio_write(jme->dev, jme->mii_if.phy_id, MII_CTRL1000, ctrl1000);
 return 0;
}
