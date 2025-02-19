
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ksz_port {int first_port; int port_cnt; int speed; int duplex; struct ksz_hw* hw; } ;
struct ksz_hw {int dummy; } ;


 int KS884X_PORT_CTRL_4_OFFSET ;
 int KS884X_PORT_STATUS_OFFSET ;
 int PORT_AUTO_NEG_100BTX ;
 int PORT_AUTO_NEG_100BTX_FD ;
 int PORT_AUTO_NEG_10BT ;
 int PORT_AUTO_NEG_10BT_FD ;
 int PORT_AUTO_NEG_ENABLE ;
 int PORT_AUTO_NEG_RESTART ;
 int PORT_STATUS_LINK_GOOD ;
 int advertised_flow_ctrl (struct ksz_port*,int) ;
 int port_r16 (struct ksz_hw*,int,int ,int*) ;
 int port_r8 (struct ksz_hw*,int,int ,int*) ;
 int port_w16 (struct ksz_hw*,int,int ,int) ;

__attribute__((used)) static void port_set_link_speed(struct ksz_port *port)
{
 struct ksz_hw *hw = port->hw;
 u16 data;
 u16 cfg;
 u8 status;
 int i;
 int p;

 for (i = 0, p = port->first_port; i < port->port_cnt; i++, p++) {
  port_r16(hw, p, KS884X_PORT_CTRL_4_OFFSET, &data);
  port_r8(hw, p, KS884X_PORT_STATUS_OFFSET, &status);

  cfg = 0;
  if (status & PORT_STATUS_LINK_GOOD)
   cfg = data;

  data |= PORT_AUTO_NEG_ENABLE;
  data = advertised_flow_ctrl(port, data);

  data |= PORT_AUTO_NEG_100BTX_FD | PORT_AUTO_NEG_100BTX |
   PORT_AUTO_NEG_10BT_FD | PORT_AUTO_NEG_10BT;


  if (port->speed || port->duplex) {
   if (10 == port->speed)
    data &= ~(PORT_AUTO_NEG_100BTX_FD |
     PORT_AUTO_NEG_100BTX);
   else if (100 == port->speed)
    data &= ~(PORT_AUTO_NEG_10BT_FD |
     PORT_AUTO_NEG_10BT);
   if (1 == port->duplex)
    data &= ~(PORT_AUTO_NEG_100BTX_FD |
     PORT_AUTO_NEG_10BT_FD);
   else if (2 == port->duplex)
    data &= ~(PORT_AUTO_NEG_100BTX |
     PORT_AUTO_NEG_10BT);
  }
  if (data != cfg) {
   data |= PORT_AUTO_NEG_RESTART;
   port_w16(hw, p, KS884X_PORT_CTRL_4_OFFSET, data);
  }
 }
}
