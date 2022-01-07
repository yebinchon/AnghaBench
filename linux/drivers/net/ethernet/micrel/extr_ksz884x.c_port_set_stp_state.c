
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ksz_hw {TYPE_2__* ksz_switch; } ;
struct TYPE_4__ {TYPE_1__* port_cfg; } ;
struct TYPE_3__ {int stp_state; } ;


 int KS8842_PORT_CTRL_2_OFFSET ;
 int PORT_LEARN_DISABLE ;
 int PORT_RX_ENABLE ;
 int PORT_TX_ENABLE ;






 int port_r16 (struct ksz_hw*,int,int ,int*) ;
 int port_w16 (struct ksz_hw*,int,int ,int) ;

__attribute__((used)) static void port_set_stp_state(struct ksz_hw *hw, int port, int state)
{
 u16 data;

 port_r16(hw, port, KS8842_PORT_CTRL_2_OFFSET, &data);
 switch (state) {
 case 132:
  data &= ~(PORT_TX_ENABLE | PORT_RX_ENABLE);
  data |= PORT_LEARN_DISABLE;
  break;
 case 129:




  data &= ~PORT_TX_ENABLE;
  data |= PORT_RX_ENABLE;
  data |= PORT_LEARN_DISABLE;
  break;
 case 130:
  data &= ~PORT_TX_ENABLE;
  data |= PORT_RX_ENABLE;
  data &= ~PORT_LEARN_DISABLE;
  break;
 case 131:
  data |= (PORT_TX_ENABLE | PORT_RX_ENABLE);
  data &= ~PORT_LEARN_DISABLE;
  break;
 case 133:




  data &= ~(PORT_TX_ENABLE | PORT_RX_ENABLE);
  data |= PORT_LEARN_DISABLE;
  break;
 case 128:
  data |= (PORT_TX_ENABLE | PORT_RX_ENABLE);
  data |= PORT_LEARN_DISABLE;
  break;
 }
 port_w16(hw, port, KS8842_PORT_CTRL_2_OFFSET, data);
 hw->ksz_switch->port_cfg[port].stp_state = state;
}
