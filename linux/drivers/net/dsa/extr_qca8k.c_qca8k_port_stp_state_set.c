
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qca8k_priv {int dummy; } ;
struct dsa_switch {scalar_t__ priv; } ;







 int QCA8K_PORT_LOOKUP_CTRL (int) ;
 int QCA8K_PORT_LOOKUP_STATE_BLOCKING ;
 int QCA8K_PORT_LOOKUP_STATE_DISABLED ;
 int QCA8K_PORT_LOOKUP_STATE_FORWARD ;
 int QCA8K_PORT_LOOKUP_STATE_LEARNING ;
 int QCA8K_PORT_LOOKUP_STATE_LISTENING ;
 int QCA8K_PORT_LOOKUP_STATE_MASK ;
 int qca8k_rmw (struct qca8k_priv*,int ,int ,int ) ;

__attribute__((used)) static void
qca8k_port_stp_state_set(struct dsa_switch *ds, int port, u8 state)
{
 struct qca8k_priv *priv = (struct qca8k_priv *)ds->priv;
 u32 stp_state;

 switch (state) {
 case 131:
  stp_state = QCA8K_PORT_LOOKUP_STATE_DISABLED;
  break;
 case 132:
  stp_state = QCA8K_PORT_LOOKUP_STATE_BLOCKING;
  break;
 case 128:
  stp_state = QCA8K_PORT_LOOKUP_STATE_LISTENING;
  break;
 case 129:
  stp_state = QCA8K_PORT_LOOKUP_STATE_LEARNING;
  break;
 case 130:
 default:
  stp_state = QCA8K_PORT_LOOKUP_STATE_FORWARD;
  break;
 }

 qca8k_rmw(priv, QCA8K_PORT_LOOKUP_CTRL(port),
    QCA8K_PORT_LOOKUP_STATE_MASK, stp_state);
}
