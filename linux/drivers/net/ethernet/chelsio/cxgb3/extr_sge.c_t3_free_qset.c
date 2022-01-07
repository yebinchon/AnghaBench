
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tx_desc {int dummy; } ;
struct TYPE_6__ {int size; int phys_addr; scalar_t__ desc; int cntxt_id; } ;
struct sge_qset {TYPE_2__ rspq; TYPE_3__* txq; TYPE_4__* fl; } ;
struct rx_desc {int dummy; } ;
struct rsp_desc {int dummy; } ;
struct pci_dev {int dev; } ;
struct TYPE_5__ {int reg_lock; } ;
struct adapter {TYPE_1__ sge; struct pci_dev* pdev; } ;
struct TYPE_8__ {int size; int phys_addr; scalar_t__ desc; scalar_t__ sdesc; int cntxt_id; } ;
struct TYPE_7__ {int size; int sendq; int phys_addr; scalar_t__ desc; scalar_t__ sdesc; int in_use; int cntxt_id; } ;


 int SGE_RXQ_PER_SET ;
 int SGE_TXQ_PER_SET ;
 int __skb_queue_purge (int *) ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;
 int free_rx_bufs (struct pci_dev*,TYPE_4__*) ;
 int free_tx_desc (struct adapter*,TYPE_3__*,int ) ;
 int kfree (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int t3_reset_qset (struct sge_qset*) ;
 int t3_sge_disable_fl (struct adapter*,int ) ;
 int t3_sge_disable_rspcntxt (struct adapter*,int ) ;
 int t3_sge_enable_ecntxt (struct adapter*,int ,int ) ;

__attribute__((used)) static void t3_free_qset(struct adapter *adapter, struct sge_qset *q)
{
 int i;
 struct pci_dev *pdev = adapter->pdev;

 for (i = 0; i < SGE_RXQ_PER_SET; ++i)
  if (q->fl[i].desc) {
   spin_lock_irq(&adapter->sge.reg_lock);
   t3_sge_disable_fl(adapter, q->fl[i].cntxt_id);
   spin_unlock_irq(&adapter->sge.reg_lock);
   free_rx_bufs(pdev, &q->fl[i]);
   kfree(q->fl[i].sdesc);
   dma_free_coherent(&pdev->dev,
       q->fl[i].size *
       sizeof(struct rx_desc), q->fl[i].desc,
       q->fl[i].phys_addr);
  }

 for (i = 0; i < SGE_TXQ_PER_SET; ++i)
  if (q->txq[i].desc) {
   spin_lock_irq(&adapter->sge.reg_lock);
   t3_sge_enable_ecntxt(adapter, q->txq[i].cntxt_id, 0);
   spin_unlock_irq(&adapter->sge.reg_lock);
   if (q->txq[i].sdesc) {
    free_tx_desc(adapter, &q->txq[i],
          q->txq[i].in_use);
    kfree(q->txq[i].sdesc);
   }
   dma_free_coherent(&pdev->dev,
       q->txq[i].size *
       sizeof(struct tx_desc),
       q->txq[i].desc, q->txq[i].phys_addr);
   __skb_queue_purge(&q->txq[i].sendq);
  }

 if (q->rspq.desc) {
  spin_lock_irq(&adapter->sge.reg_lock);
  t3_sge_disable_rspcntxt(adapter, q->rspq.cntxt_id);
  spin_unlock_irq(&adapter->sge.reg_lock);
  dma_free_coherent(&pdev->dev,
      q->rspq.size * sizeof(struct rsp_desc),
      q->rspq.desc, q->rspq.phys_addr);
 }

 t3_reset_qset(q);
}
