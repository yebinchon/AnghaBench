
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ctrlmode; int state; } ;
struct sun4ican_priv {TYPE_1__ can; scalar_t__ base; } ;
struct net_device {int dummy; } ;


 int CAN_CTRLMODE_BERR_REPORTING ;
 int CAN_CTRLMODE_LISTENONLY ;
 int CAN_CTRLMODE_LOOPBACK ;
 int CAN_STATE_ERROR_ACTIVE ;
 int SUN4I_INTEN_BERR ;
 int SUN4I_MSEL_LISTEN_ONLY_MODE ;
 int SUN4I_MSEL_LOOPBACK_MODE ;
 scalar_t__ SUN4I_REG_ACPC_ADDR ;
 scalar_t__ SUN4I_REG_ACPM_ADDR ;
 scalar_t__ SUN4I_REG_ERRC_ADDR ;
 scalar_t__ SUN4I_REG_INTEN_ADDR ;
 scalar_t__ SUN4I_REG_MSEL_ADDR ;
 int netdev_err (struct net_device*,char*) ;
 struct sun4ican_priv* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;
 int set_normal_mode (struct net_device*) ;
 int set_reset_mode (struct net_device*) ;
 int sun4ican_set_bittiming (struct net_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sun4i_can_start(struct net_device *dev)
{
 struct sun4ican_priv *priv = netdev_priv(dev);
 int err;
 u32 mod_reg_val;


 err = set_reset_mode(dev);
 if (err) {
  netdev_err(dev, "could not enter reset mode\n");
  return err;
 }


 writel(0x00000000, priv->base + SUN4I_REG_ACPC_ADDR);
 writel(0xFFFFFFFF, priv->base + SUN4I_REG_ACPM_ADDR);


 writel(0, priv->base + SUN4I_REG_ERRC_ADDR);


 if (priv->can.ctrlmode & CAN_CTRLMODE_BERR_REPORTING)
  writel(0xFF, priv->base + SUN4I_REG_INTEN_ADDR);
 else
  writel(0xFF & ~SUN4I_INTEN_BERR,
         priv->base + SUN4I_REG_INTEN_ADDR);


 mod_reg_val = readl(priv->base + SUN4I_REG_MSEL_ADDR);
 if (priv->can.ctrlmode & CAN_CTRLMODE_LOOPBACK)
  mod_reg_val |= SUN4I_MSEL_LOOPBACK_MODE;
 else if (priv->can.ctrlmode & CAN_CTRLMODE_LISTENONLY)
  mod_reg_val |= SUN4I_MSEL_LISTEN_ONLY_MODE;
 writel(mod_reg_val, priv->base + SUN4I_REG_MSEL_ADDR);

 err = sun4ican_set_bittiming(dev);
 if (err)
  return err;


 err = set_normal_mode(dev);
 if (err) {
  netdev_err(dev, "could not enter normal mode\n");
  return err;
 }

 priv->can.state = CAN_STATE_ERROR_ACTIVE;

 return 0;
}
