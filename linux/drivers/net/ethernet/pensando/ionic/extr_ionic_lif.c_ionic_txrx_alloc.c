
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct ionic_txq_sg_desc {int dummy; } ;
struct ionic_txq_desc {int dummy; } ;
struct ionic_txq_comp {int dummy; } ;
struct ionic_rxq_desc {int dummy; } ;
struct ionic_rxq_comp {int dummy; } ;
struct ionic_lif {unsigned int nxqs; TYPE_4__* txqcqs; TYPE_3__* rxqcqs; TYPE_8__* ionic; int kern_pid; int nrxq_descs; int rx_coalesce_usecs; int ntxq_descs; } ;
struct TYPE_9__ {int intr_ctrl; } ;
struct TYPE_14__ {TYPE_1__ idev; } ;
struct TYPE_10__ {int index; } ;
struct TYPE_13__ {TYPE_2__ intr; int stats; } ;
struct TYPE_12__ {TYPE_5__* qcq; int stats; } ;
struct TYPE_11__ {TYPE_5__* qcq; int stats; } ;


 unsigned int IONIC_QCQ_F_INTR ;
 unsigned int IONIC_QCQ_F_RX_STATS ;
 unsigned int IONIC_QCQ_F_SG ;
 unsigned int IONIC_QCQ_F_TX_STATS ;
 int IONIC_QTYPE_RXQ ;
 int IONIC_QTYPE_TXQ ;
 int ionic_coal_usec_to_hw (TYPE_8__*,int ) ;
 int ionic_intr_coal_init (int ,int ,int ) ;
 int ionic_link_qcq_interrupts (TYPE_5__*,TYPE_5__*) ;
 int ionic_qcq_alloc (struct ionic_lif*,int ,unsigned int,char*,unsigned int,int ,int,int,int,int ,TYPE_5__**) ;
 int ionic_txrx_free (struct ionic_lif*) ;

__attribute__((used)) static int ionic_txrx_alloc(struct ionic_lif *lif)
{
 unsigned int flags;
 unsigned int i;
 int err = 0;
 u32 coal;

 flags = IONIC_QCQ_F_TX_STATS | IONIC_QCQ_F_SG;
 for (i = 0; i < lif->nxqs; i++) {
  err = ionic_qcq_alloc(lif, IONIC_QTYPE_TXQ, i, "tx", flags,
          lif->ntxq_descs,
          sizeof(struct ionic_txq_desc),
          sizeof(struct ionic_txq_comp),
          sizeof(struct ionic_txq_sg_desc),
          lif->kern_pid, &lif->txqcqs[i].qcq);
  if (err)
   goto err_out;

  lif->txqcqs[i].qcq->stats = lif->txqcqs[i].stats;
 }

 flags = IONIC_QCQ_F_RX_STATS | IONIC_QCQ_F_INTR;
 coal = ionic_coal_usec_to_hw(lif->ionic, lif->rx_coalesce_usecs);
 for (i = 0; i < lif->nxqs; i++) {
  err = ionic_qcq_alloc(lif, IONIC_QTYPE_RXQ, i, "rx", flags,
          lif->nrxq_descs,
          sizeof(struct ionic_rxq_desc),
          sizeof(struct ionic_rxq_comp),
          0, lif->kern_pid, &lif->rxqcqs[i].qcq);
  if (err)
   goto err_out;

  lif->rxqcqs[i].qcq->stats = lif->rxqcqs[i].stats;

  ionic_intr_coal_init(lif->ionic->idev.intr_ctrl,
         lif->rxqcqs[i].qcq->intr.index, coal);
  ionic_link_qcq_interrupts(lif->rxqcqs[i].qcq,
       lif->txqcqs[i].qcq);
 }

 return 0;

err_out:
 ionic_txrx_free(lif);

 return err;
}
