
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phylink_link_state {int speed; } ;
struct mvpp2_port {scalar_t__ phy_interface; scalar_t__ base; } ;


 scalar_t__ MVPP2_GMAC_CTRL_1_REG ;
 int MVPP2_GMAC_GMII_LB_EN_MASK ;
 int MVPP2_GMAC_PCS_LB_EN_MASK ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 scalar_t__ phy_interface_mode_is_8023z (scalar_t__) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mvpp2_port_loopback_set(struct mvpp2_port *port,
        const struct phylink_link_state *state)
{
 u32 val;

 val = readl(port->base + MVPP2_GMAC_CTRL_1_REG);

 if (state->speed == 1000)
  val |= MVPP2_GMAC_GMII_LB_EN_MASK;
 else
  val &= ~MVPP2_GMAC_GMII_LB_EN_MASK;

 if (phy_interface_mode_is_8023z(port->phy_interface) ||
     port->phy_interface == PHY_INTERFACE_MODE_SGMII)
  val |= MVPP2_GMAC_PCS_LB_EN_MASK;
 else
  val &= ~MVPP2_GMAC_PCS_LB_EN_MASK;

 writel(val, port->base + MVPP2_GMAC_CTRL_1_REG);
}
