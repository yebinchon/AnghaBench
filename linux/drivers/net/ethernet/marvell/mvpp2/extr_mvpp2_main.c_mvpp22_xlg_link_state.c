
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phylink_link_state {int duplex; int an_complete; int link; int pause; int speed; } ;
struct mvpp2_port {scalar_t__ base; } ;


 int MLO_PAUSE_RX ;
 int MLO_PAUSE_TX ;
 scalar_t__ MVPP22_XLG_CTRL0_REG ;
 int MVPP22_XLG_CTRL0_RX_FLOW_CTRL_EN ;
 int MVPP22_XLG_CTRL0_TX_FLOW_CTRL_EN ;
 scalar_t__ MVPP22_XLG_STATUS ;
 int MVPP22_XLG_STATUS_LINK_UP ;
 int SPEED_10000 ;
 int readl (scalar_t__) ;

__attribute__((used)) static void mvpp22_xlg_link_state(struct mvpp2_port *port,
      struct phylink_link_state *state)
{
 u32 val;

 state->speed = SPEED_10000;
 state->duplex = 1;
 state->an_complete = 1;

 val = readl(port->base + MVPP22_XLG_STATUS);
 state->link = !!(val & MVPP22_XLG_STATUS_LINK_UP);

 state->pause = 0;
 val = readl(port->base + MVPP22_XLG_CTRL0_REG);
 if (val & MVPP22_XLG_CTRL0_TX_FLOW_CTRL_EN)
  state->pause |= MLO_PAUSE_TX;
 if (val & MVPP22_XLG_CTRL0_RX_FLOW_CTRL_EN)
  state->pause |= MLO_PAUSE_RX;
}
