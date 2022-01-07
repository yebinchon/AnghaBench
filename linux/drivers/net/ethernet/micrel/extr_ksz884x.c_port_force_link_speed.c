
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ksz_port {int first_port; int port_cnt; int speed; int duplex; struct ksz_hw* hw; } ;
struct ksz_hw {int dummy; } ;


 int KS884X_PHY_1_CTRL_OFFSET ;
 int PHY_AUTO_NEG_ENABLE ;
 int PHY_CTRL_INTERVAL ;
 int PHY_FULL_DUPLEX ;
 int PHY_SPEED_100MBIT ;
 int hw_r_phy_ctrl (struct ksz_hw*,int,int *) ;
 int hw_w_phy_ctrl (struct ksz_hw*,int,int ) ;

__attribute__((used)) static void port_force_link_speed(struct ksz_port *port)
{
 struct ksz_hw *hw = port->hw;
 u16 data;
 int i;
 int phy;
 int p;

 for (i = 0, p = port->first_port; i < port->port_cnt; i++, p++) {
  phy = KS884X_PHY_1_CTRL_OFFSET + p * PHY_CTRL_INTERVAL;
  hw_r_phy_ctrl(hw, phy, &data);

  data &= ~PHY_AUTO_NEG_ENABLE;

  if (10 == port->speed)
   data &= ~PHY_SPEED_100MBIT;
  else if (100 == port->speed)
   data |= PHY_SPEED_100MBIT;
  if (1 == port->duplex)
   data &= ~PHY_FULL_DUPLEX;
  else if (2 == port->duplex)
   data |= PHY_FULL_DUPLEX;
  hw_w_phy_ctrl(hw, phy, data);
 }
}
