
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct emac_irq {int irq; } ;
struct emac_adapter {int netdev; struct emac_irq irq; } ;


 int emac_isr ;
 int emac_mac_rx_tx_rings_alloc_all (struct emac_adapter*) ;
 int emac_mac_rx_tx_rings_free_all (struct emac_adapter*) ;
 int emac_mac_up (struct emac_adapter*) ;
 int emac_sgmii_close (struct emac_adapter*) ;
 int emac_sgmii_open (struct emac_adapter*) ;
 int free_irq (int ,struct emac_irq*) ;
 int netdev_err (int ,char*) ;
 struct emac_adapter* netdev_priv (struct net_device*) ;
 int request_irq (int ,int ,int ,char*,struct emac_irq*) ;

__attribute__((used)) static int emac_open(struct net_device *netdev)
{
 struct emac_adapter *adpt = netdev_priv(netdev);
 struct emac_irq *irq = &adpt->irq;
 int ret;

 ret = request_irq(irq->irq, emac_isr, 0, "emac-core0", irq);
 if (ret) {
  netdev_err(adpt->netdev, "could not request emac-core0 irq\n");
  return ret;
 }


 ret = emac_mac_rx_tx_rings_alloc_all(adpt);
 if (ret) {
  netdev_err(adpt->netdev, "error allocating rx/tx rings\n");
  free_irq(irq->irq, irq);
  return ret;
 }

 ret = emac_sgmii_open(adpt);
 if (ret) {
  emac_mac_rx_tx_rings_free_all(adpt);
  free_irq(irq->irq, irq);
  return ret;
 }

 ret = emac_mac_up(adpt);
 if (ret) {
  emac_mac_rx_tx_rings_free_all(adpt);
  free_irq(irq->irq, irq);
  emac_sgmii_close(adpt);
  return ret;
 }

 return 0;
}
