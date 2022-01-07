
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_instance {int no_mcast; int ndev; int commac; int mal; } ;


 int mal_poll_disable (int ,int *) ;
 int netif_addr_lock (int ) ;
 int netif_addr_unlock (int ) ;
 int netif_trans_update (int ) ;
 int netif_tx_disable (int ) ;
 int netif_tx_lock_bh (int ) ;
 int netif_tx_unlock_bh (int ) ;

__attribute__((used)) static inline void emac_netif_stop(struct emac_instance *dev)
{
 netif_tx_lock_bh(dev->ndev);
 netif_addr_lock(dev->ndev);
 dev->no_mcast = 1;
 netif_addr_unlock(dev->ndev);
 netif_tx_unlock_bh(dev->ndev);
 netif_trans_update(dev->ndev);
 mal_poll_disable(dev->mal, &dev->commac);
 netif_tx_disable(dev->ndev);
}
