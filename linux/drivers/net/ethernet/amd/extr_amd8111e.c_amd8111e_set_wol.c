
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct amd8111e_priv {int options; int lock; } ;


 int EINVAL ;
 int OPTION_WAKE_MAGIC_ENABLE ;
 int OPTION_WAKE_PHY_ENABLE ;
 int OPTION_WOL_ENABLE ;
 int WAKE_MAGIC ;
 int WAKE_PHY ;
 struct amd8111e_priv* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int amd8111e_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol_info)
{
 struct amd8111e_priv *lp = netdev_priv(dev);
 if (wol_info->wolopts & ~(WAKE_MAGIC|WAKE_PHY))
  return -EINVAL;
 spin_lock_irq(&lp->lock);
 if (wol_info->wolopts & WAKE_MAGIC)
  lp->options |=
   (OPTION_WOL_ENABLE | OPTION_WAKE_MAGIC_ENABLE);
 else if(wol_info->wolopts & WAKE_PHY)
  lp->options |=
   (OPTION_WOL_ENABLE | OPTION_WAKE_PHY_ENABLE);
 else
  lp->options &= ~OPTION_WOL_ENABLE;
 spin_unlock_irq(&lp->lock);
 return 0;
}
