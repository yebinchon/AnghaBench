
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_enet_pdata {int rxq_cnt; int cq_cnt; TYPE_1__** tx_ring; struct xgene_enet_desc_ring** rx_ring; } ;
struct xgene_enet_desc_ring {int irq; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct xgene_enet_desc_ring* cp_ring; } ;


 int IRQ_DISABLE_UNLAZY ;
 int devm_free_irq (struct device*,int ,struct xgene_enet_desc_ring*) ;
 int irq_clear_status_flags (int ,int ) ;
 struct device* ndev_to_dev (struct net_device*) ;
 struct xgene_enet_pdata* netdev_priv (struct net_device*) ;

__attribute__((used)) static void xgene_enet_free_irq(struct net_device *ndev)
{
 struct xgene_enet_pdata *pdata;
 struct xgene_enet_desc_ring *ring;
 struct device *dev;
 int i;

 pdata = netdev_priv(ndev);
 dev = ndev_to_dev(ndev);

 for (i = 0; i < pdata->rxq_cnt; i++) {
  ring = pdata->rx_ring[i];
  irq_clear_status_flags(ring->irq, IRQ_DISABLE_UNLAZY);
  devm_free_irq(dev, ring->irq, ring);
 }

 for (i = 0; i < pdata->cq_cnt; i++) {
  ring = pdata->tx_ring[i]->cp_ring;
  irq_clear_status_flags(ring->irq, IRQ_DISABLE_UNLAZY);
  devm_free_irq(dev, ring->irq, ring);
 }
}
