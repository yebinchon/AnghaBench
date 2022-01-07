
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nixge_priv {int dummy; } ;
struct net_device {int dummy; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;






 int NIXGE_ID_LED_CTL_EN ;
 int NIXGE_ID_LED_CTL_VAL ;
 int NIXGE_REG_LED_CTL ;
 struct nixge_priv* netdev_priv (struct net_device*) ;
 int nixge_ctrl_read_reg (struct nixge_priv*,int ) ;
 int nixge_ctrl_write_reg (struct nixge_priv*,int ,int ) ;

__attribute__((used)) static int nixge_ethtools_set_phys_id(struct net_device *ndev,
          enum ethtool_phys_id_state state)
{
 struct nixge_priv *priv = netdev_priv(ndev);
 u32 ctrl;

 ctrl = nixge_ctrl_read_reg(priv, NIXGE_REG_LED_CTL);
 switch (state) {
 case 131:
  ctrl |= NIXGE_ID_LED_CTL_EN;

  nixge_ctrl_write_reg(priv, NIXGE_REG_LED_CTL, ctrl);
  return 2;

 case 128:
  ctrl |= NIXGE_ID_LED_CTL_VAL;
  nixge_ctrl_write_reg(priv, NIXGE_REG_LED_CTL, ctrl);
  break;

 case 129:
  ctrl &= ~NIXGE_ID_LED_CTL_VAL;
  nixge_ctrl_write_reg(priv, NIXGE_REG_LED_CTL, ctrl);
  break;

 case 130:

  ctrl &= ~NIXGE_ID_LED_CTL_EN;
  nixge_ctrl_write_reg(priv, NIXGE_REG_LED_CTL, ctrl);
  break;
 }

 return 0;
}
