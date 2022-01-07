
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct hinic_rxq {int irq_name; struct net_device* netdev; } ;


 int devm_kfree (int *,int ) ;
 int free_all_rx_skbs (struct hinic_rxq*) ;
 int rx_free_irq (struct hinic_rxq*) ;

void hinic_clean_rxq(struct hinic_rxq *rxq)
{
 struct net_device *netdev = rxq->netdev;

 rx_free_irq(rxq);

 free_all_rx_skbs(rxq);
 devm_kfree(&netdev->dev, rxq->irq_name);
}
