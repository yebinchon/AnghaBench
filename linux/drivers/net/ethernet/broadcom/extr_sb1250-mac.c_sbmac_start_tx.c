
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sbmac_softc {int sbm_lock; int sbm_txdma; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 struct sbmac_softc* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 scalar_t__ sbdma_add_txbuffer (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static netdev_tx_t sbmac_start_tx(struct sk_buff *skb, struct net_device *dev)
{
 struct sbmac_softc *sc = netdev_priv(dev);
 unsigned long flags;


 spin_lock_irqsave(&sc->sbm_lock, flags);






 if (sbdma_add_txbuffer(&(sc->sbm_txdma),skb)) {

  netif_stop_queue(dev);
  spin_unlock_irqrestore(&sc->sbm_lock, flags);

  return NETDEV_TX_BUSY;
 }

 spin_unlock_irqrestore(&sc->sbm_lock, flags);

 return NETDEV_TX_OK;
}
