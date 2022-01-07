
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct ionic_txq_desc {int cmd; } ;
struct TYPE_4__ {int dbell_count; } ;
struct ionic_qcq {TYPE_3__* stats; TYPE_1__ q; } ;
struct TYPE_5__ {int * sg_cntr; } ;
struct TYPE_6__ {TYPE_2__ tx; } ;


 int IONIC_MAX_NUM_SG_CNTR ;
 int IONIC_TXQ_DESC_NSGE_MASK ;
 int IONIC_TXQ_DESC_NSGE_SHIFT ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static inline void debug_stats_txq_post(struct ionic_qcq *qcq,
     struct ionic_txq_desc *desc, bool dbell)
{
 u8 num_sg_elems = ((le64_to_cpu(desc->cmd) >> IONIC_TXQ_DESC_NSGE_SHIFT)
      & IONIC_TXQ_DESC_NSGE_MASK);

 qcq->q.dbell_count += dbell;

 if (num_sg_elems > (IONIC_MAX_NUM_SG_CNTR - 1))
  num_sg_elems = IONIC_MAX_NUM_SG_CNTR - 1;

 qcq->stats->tx.sg_cntr[num_sg_elems]++;
}
