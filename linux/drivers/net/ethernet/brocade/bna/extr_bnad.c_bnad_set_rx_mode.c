
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int flags; } ;
struct bnad {int cfg_flags; int bna_lock; TYPE_1__* rx_info; } ;
typedef enum bna_rxmode { ____Placeholder_bna_rxmode } bna_rxmode ;
struct TYPE_2__ {int * rx; } ;


 int BNAD_CF_ALLMULTI ;
 int BNAD_CF_DEFAULT ;
 int BNAD_CF_PROMISC ;
 int BNAD_RXMODE_PROMISC_DEFAULT ;
 int BNA_RXMODE_ALLMULTI ;
 int BNA_RXMODE_DEFAULT ;
 int BNA_RXMODE_PROMISC ;
 int IFF_PROMISC ;
 int bna_rx_mode_set (int *,int,int) ;
 int bnad_set_rx_mcast_fltr (struct bnad*) ;
 int bnad_set_rx_ucast_fltr (struct bnad*) ;
 struct bnad* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
bnad_set_rx_mode(struct net_device *netdev)
{
 struct bnad *bnad = netdev_priv(netdev);
 enum bna_rxmode new_mode, mode_mask;
 unsigned long flags;

 spin_lock_irqsave(&bnad->bna_lock, flags);

 if (bnad->rx_info[0].rx == ((void*)0)) {
  spin_unlock_irqrestore(&bnad->bna_lock, flags);
  return;
 }


 bnad->cfg_flags &= ~(BNAD_CF_PROMISC | BNAD_CF_DEFAULT |
   BNAD_CF_ALLMULTI);

 new_mode = 0;
 if (netdev->flags & IFF_PROMISC) {
  new_mode |= BNAD_RXMODE_PROMISC_DEFAULT;
  bnad->cfg_flags |= BNAD_CF_PROMISC;
 } else {
  bnad_set_rx_mcast_fltr(bnad);

  if (bnad->cfg_flags & BNAD_CF_ALLMULTI)
   new_mode |= BNA_RXMODE_ALLMULTI;

  bnad_set_rx_ucast_fltr(bnad);

  if (bnad->cfg_flags & BNAD_CF_DEFAULT)
   new_mode |= BNA_RXMODE_DEFAULT;
 }

 mode_mask = BNA_RXMODE_PROMISC | BNA_RXMODE_DEFAULT |
   BNA_RXMODE_ALLMULTI;
 bna_rx_mode_set(bnad->rx_info[0].rx, new_mode, mode_mask);

 spin_unlock_irqrestore(&bnad->bna_lock, flags);
}
