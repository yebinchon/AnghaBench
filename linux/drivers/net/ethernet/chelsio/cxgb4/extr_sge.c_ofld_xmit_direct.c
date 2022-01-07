
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_7__ {int lock; } ;
struct TYPE_6__ {size_t pidx; int * desc; } ;
struct sge_uld_txq {TYPE_3__ sendq; TYPE_1__ q; int adap; scalar_t__ service_ofldq_running; scalar_t__ full; } ;
struct fw_wr_hdr {int dummy; } ;


 int DIV_ROUND_UP (unsigned int,int) ;
 unsigned int MAX_IMM_OFLD_TX_DATA_WR_LEN ;
 int NET_XMIT_DROP ;
 int NET_XMIT_SUCCESS ;
 int TXQ_STOP_THRES ;
 int WARN_ON (int) ;
 int cxgb4_ring_tx_db (int ,TYPE_1__*,unsigned int) ;
 unsigned int flits_to_desc (int ) ;
 int inline_tx_header (void const*,TYPE_1__*,int *,unsigned int) ;
 int ofldtxq_stop (struct sge_uld_txq*,struct fw_wr_hdr*) ;
 int skb_queue_empty (TYPE_3__*) ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;
 int txq_advance (TYPE_1__*,unsigned int) ;
 unsigned int txq_avail (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ofld_xmit_direct(struct sge_uld_txq *q, const void *src,
       unsigned int len)
{
 unsigned int ndesc;
 int credits;
 u64 *pos;


 if (len > MAX_IMM_OFLD_TX_DATA_WR_LEN) {
  WARN_ON(1);
  return NET_XMIT_DROP;
 }





 if (!spin_trylock(&q->sendq.lock))
  return NET_XMIT_DROP;

 if (q->full || !skb_queue_empty(&q->sendq) ||
     q->service_ofldq_running) {
  spin_unlock(&q->sendq.lock);
  return NET_XMIT_DROP;
 }
 ndesc = flits_to_desc(DIV_ROUND_UP(len, 8));
 credits = txq_avail(&q->q) - ndesc;
 pos = (u64 *)&q->q.desc[q->q.pidx];


 inline_tx_header(src, &q->q, pos, len);
 if (unlikely(credits < TXQ_STOP_THRES))
  ofldtxq_stop(q, (struct fw_wr_hdr *)pos);
 txq_advance(&q->q, ndesc);
 cxgb4_ring_tx_db(q->adap, &q->q, ndesc);

 spin_unlock(&q->sendq.lock);
 return NET_XMIT_SUCCESS;
}
