
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2io_nic {int dummy; } ;
struct net_device {int features; } ;
typedef int netdev_features_t ;


 int NETIF_F_LRO ;
 struct s2io_nic* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int s2io_card_down (struct s2io_nic*) ;
 int s2io_card_up (struct s2io_nic*) ;
 int s2io_reset (struct s2io_nic*) ;
 int s2io_start_all_tx_queue (struct s2io_nic*) ;
 int s2io_stop_all_tx_queue (struct s2io_nic*) ;

__attribute__((used)) static int s2io_set_features(struct net_device *dev, netdev_features_t features)
{
 struct s2io_nic *sp = netdev_priv(dev);
 netdev_features_t changed = (features ^ dev->features) & NETIF_F_LRO;

 if (changed && netif_running(dev)) {
  int rc;

  s2io_stop_all_tx_queue(sp);
  s2io_card_down(sp);
  dev->features = features;
  rc = s2io_card_up(sp);
  if (rc)
   s2io_reset(sp);
  else
   s2io_start_all_tx_queue(sp);

  return rc ? rc : 1;
 }

 return 0;
}
