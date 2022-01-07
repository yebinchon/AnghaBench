
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_port {int dummy; } ;


 int EINVAL ;
 int MVNETA_QSGMII_SERDES_PROTO ;
 int MVNETA_SERDES_CFG ;
 int MVNETA_SGMII_SERDES_PROTO ;
 int MVNETA_UNIT_INTR_CAUSE ;
 int PHY_INTERFACE_MODE_QSGMII ;
 int PHY_INTERFACE_MODE_SGMII ;
 int mvreg_write (struct mvneta_port*,int ,int ) ;
 scalar_t__ phy_interface_mode_is_8023z (int) ;
 int phy_interface_mode_is_rgmii (int) ;

__attribute__((used)) static int mvneta_port_power_up(struct mvneta_port *pp, int phy_mode)
{

 mvreg_write(pp, MVNETA_UNIT_INTR_CAUSE, 0);

 if (phy_mode == PHY_INTERFACE_MODE_QSGMII)
  mvreg_write(pp, MVNETA_SERDES_CFG, MVNETA_QSGMII_SERDES_PROTO);
 else if (phy_mode == PHY_INTERFACE_MODE_SGMII ||
   phy_interface_mode_is_8023z(phy_mode))
  mvreg_write(pp, MVNETA_SERDES_CFG, MVNETA_SGMII_SERDES_PROTO);
 else if (!phy_interface_mode_is_rgmii(phy_mode))
  return -EINVAL;

 return 0;
}
