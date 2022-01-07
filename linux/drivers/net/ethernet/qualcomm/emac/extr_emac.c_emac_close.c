
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int irq; } ;
struct emac_adapter {int reset_lock; TYPE_1__ irq; } ;


 int emac_mac_down (struct emac_adapter*) ;
 int emac_mac_rx_tx_rings_free_all (struct emac_adapter*) ;
 int emac_sgmii_close (struct emac_adapter*) ;
 int free_irq (int ,TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct emac_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int emac_close(struct net_device *netdev)
{
 struct emac_adapter *adpt = netdev_priv(netdev);

 mutex_lock(&adpt->reset_lock);

 emac_sgmii_close(adpt);
 emac_mac_down(adpt);
 emac_mac_rx_tx_rings_free_all(adpt);

 free_irq(adpt->irq.irq, &adpt->irq);

 mutex_unlock(&adpt->reset_lock);

 return 0;
}
