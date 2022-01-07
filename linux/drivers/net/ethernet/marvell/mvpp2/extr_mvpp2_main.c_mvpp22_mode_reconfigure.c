
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_port {scalar_t__ gop_id; int phy_interface; scalar_t__ base; } ;


 int MVPP22_XLG_CTRL3_MACMODESELECT_10G ;
 int MVPP22_XLG_CTRL3_MACMODESELECT_GMAC ;
 int MVPP22_XLG_CTRL3_MACMODESELECT_MASK ;
 scalar_t__ MVPP22_XLG_CTRL3_REG ;
 int mvpp22_comphy_init (struct mvpp2_port*) ;
 int mvpp22_gop_init (struct mvpp2_port*) ;
 int mvpp22_pcs_reset_assert (struct mvpp2_port*) ;
 int mvpp22_pcs_reset_deassert (struct mvpp2_port*) ;
 int mvpp2_gmac_max_rx_size_set (struct mvpp2_port*) ;
 scalar_t__ mvpp2_is_xlg (int ) ;
 int mvpp2_mac_reset_assert (struct mvpp2_port*) ;
 int mvpp2_xlg_max_rx_size_set (struct mvpp2_port*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mvpp22_mode_reconfigure(struct mvpp2_port *port)
{
 u32 ctrl3;


 mvpp2_mac_reset_assert(port);


 mvpp22_pcs_reset_assert(port);


 mvpp22_comphy_init(port);


 mvpp22_gop_init(port);

 mvpp22_pcs_reset_deassert(port);


 if (port->gop_id == 0) {
  ctrl3 = readl(port->base + MVPP22_XLG_CTRL3_REG);
  ctrl3 &= ~MVPP22_XLG_CTRL3_MACMODESELECT_MASK;

  if (mvpp2_is_xlg(port->phy_interface))
   ctrl3 |= MVPP22_XLG_CTRL3_MACMODESELECT_10G;
  else
   ctrl3 |= MVPP22_XLG_CTRL3_MACMODESELECT_GMAC;

  writel(ctrl3, port->base + MVPP22_XLG_CTRL3_REG);
 }

 if (port->gop_id == 0 && mvpp2_is_xlg(port->phy_interface))
  mvpp2_xlg_max_rx_size_set(port);
 else
  mvpp2_gmac_max_rx_size_set(port);
}
