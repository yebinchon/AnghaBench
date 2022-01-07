
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dev_addr; } ;
struct ethtool_ringparam {scalar_t__ rx_pending; scalar_t__ tx_pending; } ;
struct bnad {scalar_t__ rxq_depth; scalar_t__ txq_depth; int num_rx; int cfg_flags; int num_tx; int conf_mutex; TYPE_2__* tx_info; int bna_lock; TYPE_1__* rx_info; } ;
struct TYPE_4__ {int tx; } ;
struct TYPE_3__ {scalar_t__ rx; } ;


 int BNAD_CF_ALLMULTI ;
 int BNAD_CF_PROMISC ;
 scalar_t__ BNAD_MAX_RXQ_DEPTH ;
 scalar_t__ BNAD_MAX_TXQ_DEPTH ;
 scalar_t__ BNAD_MIN_Q_DEPTH ;
 int EINVAL ;
 int bnad_destroy_rx (struct bnad*,int) ;
 int bnad_destroy_tx (struct bnad*,int) ;
 int bnad_enable_default_bcast (struct bnad*) ;
 int bnad_mac_addr_set_locked (struct bnad*,int ) ;
 int bnad_restore_vlans (struct bnad*,int ) ;
 int bnad_set_rx_mode (struct net_device*) ;
 int bnad_setup_rx (struct bnad*,int) ;
 int bnad_setup_tx (struct bnad*,int) ;
 int is_power_of_2 (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bnad* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
bnad_set_ringparam(struct net_device *netdev,
     struct ethtool_ringparam *ringparam)
{
 int i, current_err, err = 0;
 struct bnad *bnad = netdev_priv(netdev);
 unsigned long flags;

 mutex_lock(&bnad->conf_mutex);
 if (ringparam->rx_pending == bnad->rxq_depth &&
     ringparam->tx_pending == bnad->txq_depth) {
  mutex_unlock(&bnad->conf_mutex);
  return 0;
 }

 if (ringparam->rx_pending < BNAD_MIN_Q_DEPTH ||
     ringparam->rx_pending > BNAD_MAX_RXQ_DEPTH ||
     !is_power_of_2(ringparam->rx_pending)) {
  mutex_unlock(&bnad->conf_mutex);
  return -EINVAL;
 }
 if (ringparam->tx_pending < BNAD_MIN_Q_DEPTH ||
     ringparam->tx_pending > BNAD_MAX_TXQ_DEPTH ||
     !is_power_of_2(ringparam->tx_pending)) {
  mutex_unlock(&bnad->conf_mutex);
  return -EINVAL;
 }

 if (ringparam->rx_pending != bnad->rxq_depth) {
  bnad->rxq_depth = ringparam->rx_pending;
  if (!netif_running(netdev)) {
   mutex_unlock(&bnad->conf_mutex);
   return 0;
  }

  for (i = 0; i < bnad->num_rx; i++) {
   if (!bnad->rx_info[i].rx)
    continue;
   bnad_destroy_rx(bnad, i);
   current_err = bnad_setup_rx(bnad, i);
   if (current_err && !err)
    err = current_err;
  }

  if (!err && bnad->rx_info[0].rx) {

   bnad_restore_vlans(bnad, 0);
   bnad_enable_default_bcast(bnad);
   spin_lock_irqsave(&bnad->bna_lock, flags);
   bnad_mac_addr_set_locked(bnad, netdev->dev_addr);
   spin_unlock_irqrestore(&bnad->bna_lock, flags);
   bnad->cfg_flags &= ~(BNAD_CF_ALLMULTI |
          BNAD_CF_PROMISC);
   bnad_set_rx_mode(netdev);
  }
 }
 if (ringparam->tx_pending != bnad->txq_depth) {
  bnad->txq_depth = ringparam->tx_pending;
  if (!netif_running(netdev)) {
   mutex_unlock(&bnad->conf_mutex);
   return 0;
  }

  for (i = 0; i < bnad->num_tx; i++) {
   if (!bnad->tx_info[i].tx)
    continue;
   bnad_destroy_tx(bnad, i);
   current_err = bnad_setup_tx(bnad, i);
   if (current_err && !err)
    err = current_err;
  }
 }

 mutex_unlock(&bnad->conf_mutex);
 return err;
}
