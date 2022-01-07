
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qca8k_priv {int dev; } ;
struct phy_device {int speed; scalar_t__ duplex; } ;
struct dsa_switch {struct qca8k_priv* priv; } ;


 scalar_t__ DUPLEX_FULL ;
 int QCA8K_PORT_STATUS_DUPLEX ;
 int QCA8K_PORT_STATUS_RXFLOW ;
 int QCA8K_PORT_STATUS_SPEED_10 ;
 int QCA8K_PORT_STATUS_SPEED_100 ;
 int QCA8K_PORT_STATUS_SPEED_1000 ;
 int QCA8K_PORT_STATUS_TXFLOW ;
 int QCA8K_REG_PORT_STATUS (int) ;
 int dev_dbg (int ,char*,int,int) ;
 scalar_t__ dsa_is_cpu_port (struct dsa_switch*,int) ;
 int phy_is_pseudo_fixed_link (struct phy_device*) ;
 int qca8k_port_set_status (struct qca8k_priv*,int,int) ;
 int qca8k_write (struct qca8k_priv*,int ,int) ;

__attribute__((used)) static void
qca8k_adjust_link(struct dsa_switch *ds, int port, struct phy_device *phy)
{
 struct qca8k_priv *priv = ds->priv;
 u32 reg;


 if (!phy_is_pseudo_fixed_link(phy))
  return;


 switch (phy->speed) {
 case 10:
  reg = QCA8K_PORT_STATUS_SPEED_10;
  break;
 case 100:
  reg = QCA8K_PORT_STATUS_SPEED_100;
  break;
 case 1000:
  reg = QCA8K_PORT_STATUS_SPEED_1000;
  break;
 default:
  dev_dbg(priv->dev, "port%d link speed %dMbps not supported.\n",
   port, phy->speed);
  return;
 }


 if (phy->duplex == DUPLEX_FULL)
  reg |= QCA8K_PORT_STATUS_DUPLEX;


 if (dsa_is_cpu_port(ds, port))
  reg |= QCA8K_PORT_STATUS_RXFLOW | QCA8K_PORT_STATUS_TXFLOW;


 qca8k_port_set_status(priv, port, 0);
 qca8k_write(priv, QCA8K_REG_PORT_STATUS(port), reg);
 qca8k_port_set_status(priv, port, 1);
}
