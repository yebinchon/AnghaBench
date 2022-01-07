
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dev_addr; } ;
struct TYPE_4__ {int enet; } ;
struct bnad {int conf_mutex; int bna_lock; TYPE_2__ bna; TYPE_1__* netdev; } ;
struct bna_pause_config {scalar_t__ rx_pause; scalar_t__ tx_pause; } ;
struct TYPE_3__ {int mtu; } ;


 int BNAD_FRAME_SIZE (int ) ;
 int bna_enet_enable (int *) ;
 int bna_enet_mtu_set (int *,int ,int *) ;
 int bna_enet_pause_config (int *,struct bna_pause_config*) ;
 int bnad_destroy_tx (struct bnad*,int ) ;
 int bnad_enable_default_bcast (struct bnad*) ;
 int bnad_mac_addr_set_locked (struct bnad*,int ) ;
 int bnad_restore_vlans (struct bnad*,int ) ;
 int bnad_setup_rx (struct bnad*,int ) ;
 int bnad_setup_tx (struct bnad*,int ) ;
 int bnad_stats_timer_start (struct bnad*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bnad* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
bnad_open(struct net_device *netdev)
{
 int err;
 struct bnad *bnad = netdev_priv(netdev);
 struct bna_pause_config pause_config;
 unsigned long flags;

 mutex_lock(&bnad->conf_mutex);


 err = bnad_setup_tx(bnad, 0);
 if (err)
  goto err_return;


 err = bnad_setup_rx(bnad, 0);
 if (err)
  goto cleanup_tx;


 pause_config.tx_pause = 0;
 pause_config.rx_pause = 0;

 spin_lock_irqsave(&bnad->bna_lock, flags);
 bna_enet_mtu_set(&bnad->bna.enet,
    BNAD_FRAME_SIZE(bnad->netdev->mtu), ((void*)0));
 bna_enet_pause_config(&bnad->bna.enet, &pause_config);
 bna_enet_enable(&bnad->bna.enet);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);


 bnad_enable_default_bcast(bnad);


 bnad_restore_vlans(bnad, 0);


 spin_lock_irqsave(&bnad->bna_lock, flags);
 bnad_mac_addr_set_locked(bnad, netdev->dev_addr);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);


 bnad_stats_timer_start(bnad);

 mutex_unlock(&bnad->conf_mutex);

 return 0;

cleanup_tx:
 bnad_destroy_tx(bnad, 0);

err_return:
 mutex_unlock(&bnad->conf_mutex);
 return err;
}
