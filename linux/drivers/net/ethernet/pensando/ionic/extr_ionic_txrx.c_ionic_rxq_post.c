
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_queue {int dummy; } ;
typedef int ionic_desc_cb ;


 int DEBUG_STATS_RX_BUFF_CNT (int ) ;
 int ionic_q_post (struct ionic_queue*,int,int ,void*) ;
 int q_to_qcq (struct ionic_queue*) ;

__attribute__((used)) static inline void ionic_rxq_post(struct ionic_queue *q, bool ring_dbell,
      ionic_desc_cb cb_func, void *cb_arg)
{
 ionic_q_post(q, ring_dbell, cb_func, cb_arg);

 DEBUG_STATS_RX_BUFF_CNT(q_to_qcq(q));
}
