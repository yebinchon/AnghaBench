
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct sun4ican_priv {scalar_t__ base; TYPE_1__ can; } ;
struct net_device {int dummy; } ;


 int CAN_STATE_STOPPED ;
 scalar_t__ SUN4I_REG_INTEN_ADDR ;
 int netdev_err (struct net_device*,char*) ;
 struct sun4ican_priv* netdev_priv (struct net_device*) ;
 int set_reset_mode (struct net_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int sun4i_can_stop(struct net_device *dev)
{
 struct sun4ican_priv *priv = netdev_priv(dev);
 int err;

 priv->can.state = CAN_STATE_STOPPED;

 err = set_reset_mode(dev);
 if (err) {
  netdev_err(dev, "could not enter reset mode\n");
  return err;
 }


 writel(0, priv->base + SUN4I_REG_INTEN_ADDR);

 return 0;
}
