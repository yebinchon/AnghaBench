
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct hinic_txq {int irq_name; struct hinic_sq* sq; int netdev; } ;
struct hinic_sq {int irq; int msix_entry; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
struct hinic_dev {struct hinic_hwdev* hwdev; int tx_weight; } ;


 int TX_IRQ_NO_COALESC ;
 int TX_IRQ_NO_CREDIT ;
 int TX_IRQ_NO_LLI_TIMER ;
 int TX_IRQ_NO_PENDING ;
 int TX_IRQ_NO_RESEND_TIMER ;
 int dev_err (int *,char*) ;
 int hinic_hwdev_msix_set (struct hinic_hwdev*,int ,int ,int ,int ,int ,int ) ;
 struct hinic_dev* netdev_priv (int ) ;
 int request_irq (int ,int ,int ,int ,struct hinic_txq*) ;
 int tx_irq ;
 int tx_napi_add (struct hinic_txq*,int ) ;
 int tx_napi_del (struct hinic_txq*) ;

__attribute__((used)) static int tx_request_irq(struct hinic_txq *txq)
{
 struct hinic_dev *nic_dev = netdev_priv(txq->netdev);
 struct hinic_hwdev *hwdev = nic_dev->hwdev;
 struct hinic_hwif *hwif = hwdev->hwif;
 struct pci_dev *pdev = hwif->pdev;
 struct hinic_sq *sq = txq->sq;
 int err;

 tx_napi_add(txq, nic_dev->tx_weight);

 hinic_hwdev_msix_set(nic_dev->hwdev, sq->msix_entry,
        TX_IRQ_NO_PENDING, TX_IRQ_NO_COALESC,
        TX_IRQ_NO_LLI_TIMER, TX_IRQ_NO_CREDIT,
        TX_IRQ_NO_RESEND_TIMER);

 err = request_irq(sq->irq, tx_irq, 0, txq->irq_name, txq);
 if (err) {
  dev_err(&pdev->dev, "Failed to request Tx irq\n");
  tx_napi_del(txq);
  return err;
 }

 return 0;
}
