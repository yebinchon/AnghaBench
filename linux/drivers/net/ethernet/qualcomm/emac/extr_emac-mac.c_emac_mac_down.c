
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int irq; } ;
struct TYPE_4__ {int napi; } ;
struct emac_adapter {struct net_device* netdev; int phydev; TYPE_1__ irq; scalar_t__ base; TYPE_2__ rx_q; } ;


 int DIS_INT ;
 scalar_t__ EMAC_INT_MASK ;
 scalar_t__ EMAC_INT_STATUS ;
 int emac_mac_reset (struct emac_adapter*) ;
 int emac_rx_q_free_descs (struct emac_adapter*) ;
 int emac_tx_q_descs_free (struct emac_adapter*) ;
 int napi_disable (int *) ;
 int netdev_reset_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_disconnect (int ) ;
 int phy_stop (int ) ;
 int synchronize_irq (int ) ;
 int writel (int ,scalar_t__) ;

void emac_mac_down(struct emac_adapter *adpt)
{
 struct net_device *netdev = adpt->netdev;

 netif_stop_queue(netdev);
 napi_disable(&adpt->rx_q.napi);

 phy_stop(adpt->phydev);





 writel(DIS_INT, adpt->base + EMAC_INT_STATUS);
 writel(0, adpt->base + EMAC_INT_MASK);
 synchronize_irq(adpt->irq.irq);

 phy_disconnect(adpt->phydev);

 emac_mac_reset(adpt);

 emac_tx_q_descs_free(adpt);
 netdev_reset_queue(adpt->netdev);
 emac_rx_q_free_descs(adpt);
}
