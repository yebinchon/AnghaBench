
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qede_tx_queue {int index; int cos; scalar_t__ is_xdp; } ;
struct qede_dev {int dummy; } ;
struct TYPE_2__ {char* string; } ;


 int ETH_GSTRING_LEN ;
 int QEDE_NUM_TQSTATS ;
 int QEDE_TXQ_XDP_TO_IDX (struct qede_dev*,struct qede_tx_queue*) ;
 TYPE_1__* qede_tqstats_arr ;
 int sprintf (int *,char*,int,...) ;

__attribute__((used)) static void qede_get_strings_stats_txq(struct qede_dev *edev,
           struct qede_tx_queue *txq, u8 **buf)
{
 int i;

 for (i = 0; i < QEDE_NUM_TQSTATS; i++) {
  if (txq->is_xdp)
   sprintf(*buf, "%d [XDP]: %s",
    QEDE_TXQ_XDP_TO_IDX(edev, txq),
    qede_tqstats_arr[i].string);
  else
   sprintf(*buf, "%d_%d: %s", txq->index, txq->cos,
    qede_tqstats_arr[i].string);
  *buf += ETH_GSTRING_LEN;
 }
}
