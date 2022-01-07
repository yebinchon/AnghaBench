
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct altera_tse_private {int mac_cfg_lock; int mac_dev; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MAC_CMDCFG_PROMIS_EN ;
 int altera_tse_set_mcfilter (struct net_device*) ;
 int altera_tse_set_mcfilterall (struct net_device*) ;
 int command_config ;
 struct altera_tse_private* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tse_csroffs (int ) ;
 int tse_set_bit (int ,int ,int ) ;

__attribute__((used)) static void tse_set_rx_mode_hashfilter(struct net_device *dev)
{
 struct altera_tse_private *priv = netdev_priv(dev);

 spin_lock(&priv->mac_cfg_lock);

 if (dev->flags & IFF_PROMISC)
  tse_set_bit(priv->mac_dev, tse_csroffs(command_config),
       MAC_CMDCFG_PROMIS_EN);

 if (dev->flags & IFF_ALLMULTI)
  altera_tse_set_mcfilterall(dev);
 else
  altera_tse_set_mcfilter(dev);

 spin_unlock(&priv->mac_cfg_lock);
}
