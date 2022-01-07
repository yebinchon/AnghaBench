
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stops; } ;
struct sge_ctrl_txq {int full; TYPE_1__ q; } ;
struct fw_wr_hdr {int lo; } ;


 int FW_WR_EQUEQ_F ;
 int FW_WR_EQUIQ_F ;
 scalar_t__ TXQ_STOP_THRES ;
 int htonl (int) ;
 int reclaim_completed_tx_imm (TYPE_1__*) ;
 scalar_t__ txq_avail (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ctrlq_check_stop(struct sge_ctrl_txq *q, struct fw_wr_hdr *wr)
{
 reclaim_completed_tx_imm(&q->q);
 if (unlikely(txq_avail(&q->q) < TXQ_STOP_THRES)) {
  wr->lo |= htonl(FW_WR_EQUEQ_F | FW_WR_EQUIQ_F);
  q->q.stops++;
  q->full = 1;
 }
}
