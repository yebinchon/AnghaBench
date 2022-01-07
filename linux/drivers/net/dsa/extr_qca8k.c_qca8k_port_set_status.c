
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qca8k_priv {int dummy; } ;


 int QCA8K_PORT_STATUS_LINK_AUTO ;
 int QCA8K_PORT_STATUS_RXMAC ;
 int QCA8K_PORT_STATUS_TXMAC ;
 int QCA8K_REG_PORT_STATUS (int) ;
 int qca8k_reg_clear (struct qca8k_priv*,int ,int) ;
 int qca8k_reg_set (struct qca8k_priv*,int ,int) ;

__attribute__((used)) static void
qca8k_port_set_status(struct qca8k_priv *priv, int port, int enable)
{
 u32 mask = QCA8K_PORT_STATUS_TXMAC | QCA8K_PORT_STATUS_RXMAC;


 if (port > 0 && port < 6)
  mask |= QCA8K_PORT_STATUS_LINK_AUTO;

 if (enable)
  qca8k_reg_set(priv, QCA8K_REG_PORT_STATUS(port), mask);
 else
  qca8k_reg_clear(priv, QCA8K_REG_PORT_STATUS(port), mask);
}
