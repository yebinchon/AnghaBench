
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phylink_link_state {int duplex; scalar_t__ an_complete; int pause; int speed; int interface; } ;
struct phylink_config {int dev; } ;
struct net_device {int dummy; } ;
struct axienet_local {int phy_mode; } ;


 int MLO_PAUSE_RX ;
 int MLO_PAUSE_TX ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int XAE_EMMC_LINKSPD_100 ;
 int XAE_EMMC_LINKSPD_1000 ;
 int XAE_EMMC_OFFSET ;
 int XAE_FCC_FCRX_MASK ;
 int XAE_FCC_FCTX_MASK ;
 int XAE_FCC_OFFSET ;
 int axienet_ior (struct axienet_local*,int ) ;
 struct axienet_local* netdev_priv (struct net_device*) ;
 struct net_device* to_net_dev (int ) ;

__attribute__((used)) static int axienet_mac_link_state(struct phylink_config *config,
      struct phylink_link_state *state)
{
 struct net_device *ndev = to_net_dev(config->dev);
 struct axienet_local *lp = netdev_priv(ndev);
 u32 emmc_reg, fcc_reg;

 state->interface = lp->phy_mode;

 emmc_reg = axienet_ior(lp, XAE_EMMC_OFFSET);
 if (emmc_reg & XAE_EMMC_LINKSPD_1000)
  state->speed = SPEED_1000;
 else if (emmc_reg & XAE_EMMC_LINKSPD_100)
  state->speed = SPEED_100;
 else
  state->speed = SPEED_10;

 state->pause = 0;
 fcc_reg = axienet_ior(lp, XAE_FCC_OFFSET);
 if (fcc_reg & XAE_FCC_FCTX_MASK)
  state->pause |= MLO_PAUSE_TX;
 if (fcc_reg & XAE_FCC_FCRX_MASK)
  state->pause |= MLO_PAUSE_RX;

 state->an_complete = 0;
 state->duplex = 1;

 return 1;
}
