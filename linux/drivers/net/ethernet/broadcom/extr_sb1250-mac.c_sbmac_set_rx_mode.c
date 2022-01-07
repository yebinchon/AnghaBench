
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbmac_softc {int sbm_devflags; int sbm_lock; } ;
struct net_device {int flags; } ;


 int IFF_PROMISC ;
 struct sbmac_softc* netdev_priv (struct net_device*) ;
 int sbmac_promiscuous_mode (struct sbmac_softc*,int) ;
 int sbmac_setmulti (struct sbmac_softc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sbmac_set_rx_mode(struct net_device *dev)
{
 unsigned long flags;
 struct sbmac_softc *sc = netdev_priv(dev);

 spin_lock_irqsave(&sc->sbm_lock, flags);
 if ((dev->flags ^ sc->sbm_devflags) & IFF_PROMISC) {




  if (dev->flags & IFF_PROMISC) {
   sbmac_promiscuous_mode(sc,1);
  }
  else {
   sbmac_promiscuous_mode(sc,0);
  }
 }
 spin_unlock_irqrestore(&sc->sbm_lock, flags);





 sbmac_setmulti(sc);

}
