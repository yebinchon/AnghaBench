
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct stmmac_priv {scalar_t__ ioaddr; TYPE_4__* hw; TYPE_2__* plat; int speed; } ;
struct phylink_link_state {scalar_t__ interface; int duplex; scalar_t__ pause; int speed; } ;
struct phylink_config {int dev; } ;
struct TYPE_5__ {int speed2500; int speed5000; int speed10000; } ;
struct TYPE_7__ {int duplex; int speed10; int speed100; int speed1000; int speed2500; TYPE_1__ xgmii; int speed_mask; } ;
struct TYPE_8__ {TYPE_3__ link; } ;
struct TYPE_6__ {int bsp_priv; int (* fix_mac_speed ) (int ,int ) ;} ;


 scalar_t__ MAC_CTRL_REG ;
 scalar_t__ PHY_INTERFACE_MODE_USXGMII ;






 struct stmmac_priv* netdev_priv (int ) ;
 int readl (scalar_t__) ;
 int stmmac_mac_flow_ctrl (struct stmmac_priv*,int ) ;
 int stub1 (int ,int ) ;
 int to_net_dev (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void stmmac_mac_config(struct phylink_config *config, unsigned int mode,
         const struct phylink_link_state *state)
{
 struct stmmac_priv *priv = netdev_priv(to_net_dev(config->dev));
 u32 ctrl;

 ctrl = readl(priv->ioaddr + MAC_CTRL_REG);
 ctrl &= ~priv->hw->link.speed_mask;

 if (state->interface == PHY_INTERFACE_MODE_USXGMII) {
  switch (state->speed) {
  case 130:
   ctrl |= priv->hw->link.xgmii.speed10000;
   break;
  case 128:
   ctrl |= priv->hw->link.xgmii.speed5000;
   break;
  case 129:
   ctrl |= priv->hw->link.xgmii.speed2500;
   break;
  default:
   return;
  }
 } else {
  switch (state->speed) {
  case 129:
   ctrl |= priv->hw->link.speed2500;
   break;
  case 131:
   ctrl |= priv->hw->link.speed1000;
   break;
  case 132:
   ctrl |= priv->hw->link.speed100;
   break;
  case 133:
   ctrl |= priv->hw->link.speed10;
   break;
  default:
   return;
  }
 }

 priv->speed = state->speed;

 if (priv->plat->fix_mac_speed)
  priv->plat->fix_mac_speed(priv->plat->bsp_priv, state->speed);

 if (!state->duplex)
  ctrl &= ~priv->hw->link.duplex;
 else
  ctrl |= priv->hw->link.duplex;


 if (state->pause)
  stmmac_mac_flow_ctrl(priv, state->duplex);

 writel(ctrl, priv->ioaddr + MAC_CTRL_REG);
}
