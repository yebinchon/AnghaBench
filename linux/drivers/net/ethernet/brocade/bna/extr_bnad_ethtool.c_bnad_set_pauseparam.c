
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_pauseparam {scalar_t__ autoneg; scalar_t__ rx_pause; scalar_t__ tx_pause; } ;
struct TYPE_4__ {scalar_t__ rx_pause; scalar_t__ tx_pause; } ;
struct TYPE_6__ {TYPE_1__ pause_config; } ;
struct TYPE_5__ {TYPE_3__ enet; } ;
struct bnad {int conf_mutex; int bna_lock; TYPE_2__ bna; } ;
struct bna_pause_config {scalar_t__ rx_pause; scalar_t__ tx_pause; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int EINVAL ;
 int bna_enet_pause_config (TYPE_3__*,struct bna_pause_config*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bnad* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
bnad_set_pauseparam(struct net_device *netdev,
      struct ethtool_pauseparam *pauseparam)
{
 struct bnad *bnad = netdev_priv(netdev);
 struct bna_pause_config pause_config;
 unsigned long flags;

 if (pauseparam->autoneg == AUTONEG_ENABLE)
  return -EINVAL;

 mutex_lock(&bnad->conf_mutex);
 if (pauseparam->rx_pause != bnad->bna.enet.pause_config.rx_pause ||
     pauseparam->tx_pause != bnad->bna.enet.pause_config.tx_pause) {
  pause_config.rx_pause = pauseparam->rx_pause;
  pause_config.tx_pause = pauseparam->tx_pause;
  spin_lock_irqsave(&bnad->bna_lock, flags);
  bna_enet_pause_config(&bnad->bna.enet, &pause_config);
  spin_unlock_irqrestore(&bnad->bna_lock, flags);
 }
 mutex_unlock(&bnad->conf_mutex);
 return 0;
}
