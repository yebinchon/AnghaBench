
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct net_device {int dev_addr; int mtu; } ;
struct TYPE_3__ {int enet; } ;
struct bnad {size_t num_rx; int bna_lock; TYPE_2__* rx_info; struct net_device* netdev; TYPE_1__ bna; } ;
struct TYPE_4__ {scalar_t__ rx; } ;


 int BNAD_FRAME_SIZE (int ) ;
 int bna_enet_mtu_set (int *,int ,int *) ;
 int bnad_destroy_rx (struct bnad*,size_t) ;
 int bnad_enable_default_bcast (struct bnad*) ;
 int bnad_mac_addr_set_locked (struct bnad*,int ) ;
 int bnad_restore_vlans (struct bnad*,int ) ;
 int bnad_set_rx_mode (struct net_device*) ;
 size_t bnad_setup_rx (struct bnad*,size_t) ;
 int netdev_err (struct net_device*,char*,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32
bnad_reinit_rx(struct bnad *bnad)
{
 struct net_device *netdev = bnad->netdev;
 u32 err = 0, current_err = 0;
 u32 rx_id = 0, count = 0;
 unsigned long flags;


 for (rx_id = 0; rx_id < bnad->num_rx; rx_id++) {
  if (!bnad->rx_info[rx_id].rx)
   continue;
  bnad_destroy_rx(bnad, rx_id);
 }

 spin_lock_irqsave(&bnad->bna_lock, flags);
 bna_enet_mtu_set(&bnad->bna.enet,
    BNAD_FRAME_SIZE(bnad->netdev->mtu), ((void*)0));
 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 for (rx_id = 0; rx_id < bnad->num_rx; rx_id++) {
  count++;
  current_err = bnad_setup_rx(bnad, rx_id);
  if (current_err && !err) {
   err = current_err;
   netdev_err(netdev, "RXQ:%u setup failed\n", rx_id);
  }
 }


 if (bnad->rx_info[0].rx && !err) {
  bnad_restore_vlans(bnad, 0);
  bnad_enable_default_bcast(bnad);
  spin_lock_irqsave(&bnad->bna_lock, flags);
  bnad_mac_addr_set_locked(bnad, netdev->dev_addr);
  spin_unlock_irqrestore(&bnad->bna_lock, flags);
  bnad_set_rx_mode(netdev);
 }

 return count;
}
