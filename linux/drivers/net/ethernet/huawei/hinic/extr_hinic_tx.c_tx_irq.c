
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hinic_txq {int napi; TYPE_1__* sq; int netdev; } ;
struct hinic_dev {int hwdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int msix_entry; } ;


 int HINIC_MSIX_DISABLE ;
 int IRQ_HANDLED ;
 int hinic_hwdev_msix_cnt_set (int ,int ) ;
 int hinic_hwdev_set_msix_state (int ,int ,int ) ;
 int napi_schedule (int *) ;
 struct hinic_dev* netdev_priv (int ) ;

__attribute__((used)) static irqreturn_t tx_irq(int irq, void *data)
{
 struct hinic_txq *txq = data;
 struct hinic_dev *nic_dev;

 nic_dev = netdev_priv(txq->netdev);


 hinic_hwdev_set_msix_state(nic_dev->hwdev,
       txq->sq->msix_entry,
       HINIC_MSIX_DISABLE);

 hinic_hwdev_msix_cnt_set(nic_dev->hwdev, txq->sq->msix_entry);

 napi_schedule(&txq->napi);
 return IRQ_HANDLED;
}
