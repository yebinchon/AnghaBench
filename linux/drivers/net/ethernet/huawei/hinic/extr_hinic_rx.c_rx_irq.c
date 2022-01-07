
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_rxq {int napi; int netdev; struct hinic_rq* rq; } ;
struct hinic_rq {int msix_entry; } ;
struct hinic_dev {int hwdev; } ;
typedef int irqreturn_t ;


 int HINIC_MSIX_DISABLE ;
 int IRQ_HANDLED ;
 int hinic_hwdev_msix_cnt_set (int ,int ) ;
 int hinic_hwdev_set_msix_state (int ,int ,int ) ;
 int napi_schedule (int *) ;
 struct hinic_dev* netdev_priv (int ) ;

__attribute__((used)) static irqreturn_t rx_irq(int irq, void *data)
{
 struct hinic_rxq *rxq = (struct hinic_rxq *)data;
 struct hinic_rq *rq = rxq->rq;
 struct hinic_dev *nic_dev;


 nic_dev = netdev_priv(rxq->netdev);
 hinic_hwdev_set_msix_state(nic_dev->hwdev,
       rq->msix_entry,
       HINIC_MSIX_DISABLE);

 nic_dev = netdev_priv(rxq->netdev);
 hinic_hwdev_msix_cnt_set(nic_dev->hwdev, rq->msix_entry);

 napi_schedule(&rxq->napi);
 return IRQ_HANDLED;
}
