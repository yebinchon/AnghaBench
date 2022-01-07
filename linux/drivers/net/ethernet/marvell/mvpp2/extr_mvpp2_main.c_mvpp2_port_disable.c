
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_port {scalar_t__ gop_id; scalar_t__ base; int phy_interface; } ;


 int MVPP22_XLG_CTRL0_PORT_EN ;
 scalar_t__ MVPP22_XLG_CTRL0_REG ;
 scalar_t__ MVPP2_GMAC_CTRL_0_REG ;
 int MVPP2_GMAC_PORT_EN_MASK ;
 scalar_t__ mvpp2_is_xlg (int ) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mvpp2_port_disable(struct mvpp2_port *port)
{
 u32 val;


 if (port->gop_id == 0 && mvpp2_is_xlg(port->phy_interface)) {
  val = readl(port->base + MVPP22_XLG_CTRL0_REG);
  val &= ~MVPP22_XLG_CTRL0_PORT_EN;
  writel(val, port->base + MVPP22_XLG_CTRL0_REG);
 }

 val = readl(port->base + MVPP2_GMAC_CTRL_0_REG);
 val &= ~(MVPP2_GMAC_PORT_EN_MASK);
 writel(val, port->base + MVPP2_GMAC_CTRL_0_REG);
}
