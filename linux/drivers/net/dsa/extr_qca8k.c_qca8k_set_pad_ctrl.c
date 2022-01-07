
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qca8k_priv {int dummy; } ;


 int EINVAL ;



 int QCA8K_MAX_DELAY ;
 int QCA8K_PORT_PAD_RGMII_EN ;
 int QCA8K_PORT_PAD_RGMII_RX_DELAY (int ) ;
 int QCA8K_PORT_PAD_RGMII_RX_DELAY_EN ;
 int QCA8K_PORT_PAD_RGMII_TX_DELAY (int ) ;
 int QCA8K_PORT_PAD_SGMII_EN ;
 int QCA8K_REG_PORT0_PAD_CTRL ;
 int QCA8K_REG_PORT5_PAD_CTRL ;
 int QCA8K_REG_PORT6_PAD_CTRL ;
 int pr_err (char*,int) ;
 int qca8k_write (struct qca8k_priv*,int,int) ;

__attribute__((used)) static int
qca8k_set_pad_ctrl(struct qca8k_priv *priv, int port, int mode)
{
 u32 reg, val;

 switch (port) {
 case 0:
  reg = QCA8K_REG_PORT0_PAD_CTRL;
  break;
 case 6:
  reg = QCA8K_REG_PORT6_PAD_CTRL;
  break;
 default:
  pr_err("Can't set PAD_CTRL on port %d\n", port);
  return -EINVAL;
 }




 switch (mode) {
 case 130:

  val = QCA8K_PORT_PAD_RGMII_EN;
  qca8k_write(priv, reg, val);
  break;
 case 129:




  qca8k_write(priv, reg,
       QCA8K_PORT_PAD_RGMII_EN |
       QCA8K_PORT_PAD_RGMII_TX_DELAY(QCA8K_MAX_DELAY) |
       QCA8K_PORT_PAD_RGMII_RX_DELAY(QCA8K_MAX_DELAY));
  qca8k_write(priv, QCA8K_REG_PORT5_PAD_CTRL,
       QCA8K_PORT_PAD_RGMII_RX_DELAY_EN);
  break;
 case 128:
  qca8k_write(priv, reg, QCA8K_PORT_PAD_SGMII_EN);
  break;
 default:
  pr_err("xMII mode %d not supported\n", mode);
  return -EINVAL;
 }

 return 0;
}
