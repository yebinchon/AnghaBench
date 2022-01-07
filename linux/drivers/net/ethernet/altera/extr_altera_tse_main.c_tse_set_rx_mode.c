
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct altera_tse_private {int mac_cfg_lock; int mac_dev; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MAC_CMDCFG_PROMIS_EN ;
 int command_config ;
 int netdev_mc_empty (struct net_device*) ;
 struct altera_tse_private* netdev_priv (struct net_device*) ;
 int netdev_uc_empty (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tse_clear_bit (int ,int ,int ) ;
 int tse_csroffs (int ) ;
 int tse_set_bit (int ,int ,int ) ;

__attribute__((used)) static void tse_set_rx_mode(struct net_device *dev)
{
 struct altera_tse_private *priv = netdev_priv(dev);

 spin_lock(&priv->mac_cfg_lock);

 if ((dev->flags & IFF_PROMISC) || (dev->flags & IFF_ALLMULTI) ||
     !netdev_mc_empty(dev) || !netdev_uc_empty(dev))
  tse_set_bit(priv->mac_dev, tse_csroffs(command_config),
       MAC_CMDCFG_PROMIS_EN);
 else
  tse_clear_bit(priv->mac_dev, tse_csroffs(command_config),
         MAC_CMDCFG_PROMIS_EN);

 spin_unlock(&priv->mac_cfg_lock);
}
