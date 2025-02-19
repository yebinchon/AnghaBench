
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_port {scalar_t__ phy_interface; scalar_t__ gop_id; scalar_t__ base; scalar_t__ phylink; } ;


 scalar_t__ MVPP22_GMAC_INT_MASK ;
 int MVPP22_GMAC_INT_MASK_LINK_STAT ;
 scalar_t__ MVPP22_XLG_INT_MASK ;
 int MVPP22_XLG_INT_MASK_LINK ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int mvpp22_gop_unmask_irq (struct mvpp2_port*) ;
 scalar_t__ phy_interface_mode_is_8023z (scalar_t__) ;
 scalar_t__ phy_interface_mode_is_rgmii (scalar_t__) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mvpp22_gop_setup_irq(struct mvpp2_port *port)
{
 u32 val;

 if (port->phylink ||
     phy_interface_mode_is_rgmii(port->phy_interface) ||
     phy_interface_mode_is_8023z(port->phy_interface) ||
     port->phy_interface == PHY_INTERFACE_MODE_SGMII) {
  val = readl(port->base + MVPP22_GMAC_INT_MASK);
  val |= MVPP22_GMAC_INT_MASK_LINK_STAT;
  writel(val, port->base + MVPP22_GMAC_INT_MASK);
 }

 if (port->gop_id == 0) {
  val = readl(port->base + MVPP22_XLG_INT_MASK);
  val |= MVPP22_XLG_INT_MASK_LINK;
  writel(val, port->base + MVPP22_XLG_INT_MASK);
 }

 mvpp22_gop_unmask_irq(port);
}
