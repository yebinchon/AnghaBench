
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phylink_link_state {int speed; int pause; } ;
struct phylink_config {int dev; } ;
struct net_device {int dev; } ;
struct axienet_local {int dummy; } ;


 int MLO_PAUSE_RX ;
 int MLO_PAUSE_TX ;



 int XAE_EMMC_LINKSPD_10 ;
 int XAE_EMMC_LINKSPD_100 ;
 int XAE_EMMC_LINKSPD_1000 ;
 int XAE_EMMC_LINKSPEED_MASK ;
 int XAE_EMMC_OFFSET ;
 int XAE_FCC_FCRX_MASK ;
 int XAE_FCC_FCTX_MASK ;
 int XAE_FCC_OFFSET ;
 int axienet_ior (struct axienet_local*,int ) ;
 int axienet_iow (struct axienet_local*,int ,int ) ;
 int dev_err (int *,char*) ;
 struct axienet_local* netdev_priv (struct net_device*) ;
 struct net_device* to_net_dev (int ) ;

__attribute__((used)) static void axienet_mac_config(struct phylink_config *config, unsigned int mode,
          const struct phylink_link_state *state)
{
 struct net_device *ndev = to_net_dev(config->dev);
 struct axienet_local *lp = netdev_priv(ndev);
 u32 emmc_reg, fcc_reg;

 emmc_reg = axienet_ior(lp, XAE_EMMC_OFFSET);
 emmc_reg &= ~XAE_EMMC_LINKSPEED_MASK;

 switch (state->speed) {
 case 128:
  emmc_reg |= XAE_EMMC_LINKSPD_1000;
  break;
 case 129:
  emmc_reg |= XAE_EMMC_LINKSPD_100;
  break;
 case 130:
  emmc_reg |= XAE_EMMC_LINKSPD_10;
  break;
 default:
  dev_err(&ndev->dev,
   "Speed other than 10, 100 or 1Gbps is not supported\n");
  break;
 }

 axienet_iow(lp, XAE_EMMC_OFFSET, emmc_reg);

 fcc_reg = axienet_ior(lp, XAE_FCC_OFFSET);
 if (state->pause & MLO_PAUSE_TX)
  fcc_reg |= XAE_FCC_FCTX_MASK;
 else
  fcc_reg &= ~XAE_FCC_FCTX_MASK;
 if (state->pause & MLO_PAUSE_RX)
  fcc_reg |= XAE_FCC_FCRX_MASK;
 else
  fcc_reg &= ~XAE_FCC_FCRX_MASK;
 axienet_iow(lp, XAE_FCC_OFFSET, fcc_reg);
}
