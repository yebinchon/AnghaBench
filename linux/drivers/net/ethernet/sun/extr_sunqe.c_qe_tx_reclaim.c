
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sunqe {int tx_old; int tx_new; TYPE_1__* qe_block; } ;
struct qe_txd {int tx_flags; } ;
struct TYPE_2__ {struct qe_txd* qe_txd; } ;


 int NEXT_TX (int) ;
 int TXD_OWN ;

__attribute__((used)) static void qe_tx_reclaim(struct sunqe *qep)
{
 struct qe_txd *txbase = &qep->qe_block->qe_txd[0];
 int elem = qep->tx_old;

 while (elem != qep->tx_new) {
  u32 flags = txbase[elem].tx_flags;

  if (flags & TXD_OWN)
   break;
  elem = NEXT_TX(elem);
 }
 qep->tx_old = elem;
}
