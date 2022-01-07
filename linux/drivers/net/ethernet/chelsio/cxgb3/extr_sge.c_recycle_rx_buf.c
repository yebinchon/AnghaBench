
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_fl {size_t pidx; int gen; size_t size; int pend_cred; int credits; int * sdesc; struct rx_desc* desc; } ;
struct rx_desc {void* gen2; void* len_gen; int addr_hi; int addr_lo; } ;
struct adapter {int dummy; } ;


 int V_FLD_GEN1 (int) ;
 int V_FLD_GEN2 (int) ;
 void* cpu_to_be32 (int ) ;
 int dma_wmb () ;
 int ring_fl_db (struct adapter*,struct sge_fl*) ;

__attribute__((used)) static void recycle_rx_buf(struct adapter *adap, struct sge_fl *q,
      unsigned int idx)
{
 struct rx_desc *from = &q->desc[idx];
 struct rx_desc *to = &q->desc[q->pidx];

 q->sdesc[q->pidx] = q->sdesc[idx];
 to->addr_lo = from->addr_lo;
 to->addr_hi = from->addr_hi;
 dma_wmb();
 to->len_gen = cpu_to_be32(V_FLD_GEN1(q->gen));
 to->gen2 = cpu_to_be32(V_FLD_GEN2(q->gen));

 if (++q->pidx == q->size) {
  q->pidx = 0;
  q->gen ^= 1;
 }

 q->credits++;
 q->pend_cred++;
 ring_fl_db(adap, q);
}
