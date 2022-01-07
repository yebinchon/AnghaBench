
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct hinic_txq {int sges; int free_sges; int irq_name; struct net_device* netdev; } ;


 int devm_kfree (int *,int ) ;
 int free_all_tx_skbs (struct hinic_txq*) ;
 int tx_free_irq (struct hinic_txq*) ;

void hinic_clean_txq(struct hinic_txq *txq)
{
 struct net_device *netdev = txq->netdev;

 tx_free_irq(txq);

 free_all_tx_skbs(txq);

 devm_kfree(&netdev->dev, txq->irq_name);
 devm_kfree(&netdev->dev, txq->free_sges);
 devm_kfree(&netdev->dev, txq->sges);
}
