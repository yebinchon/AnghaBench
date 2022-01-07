
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aq_vec_s {unsigned int tx_rings; int napi; int aq_hw; TYPE_1__* aq_hw_ops; struct aq_ring_s** ring; } ;
struct aq_ring_s {int dummy; } ;
struct TYPE_2__ {int (* hw_ring_rx_stop ) (int ,struct aq_ring_s*) ;int (* hw_ring_tx_stop ) (int ,struct aq_ring_s*) ;} ;


 size_t AQ_VEC_RX_ID ;
 size_t AQ_VEC_TX_ID ;
 int napi_disable (int *) ;
 int stub1 (int ,struct aq_ring_s*) ;
 int stub2 (int ,struct aq_ring_s*) ;

void aq_vec_stop(struct aq_vec_s *self)
{
 struct aq_ring_s *ring = ((void*)0);
 unsigned int i = 0U;

 for (i = 0U, ring = self->ring[0];
  self->tx_rings > i; ++i, ring = self->ring[i]) {
  self->aq_hw_ops->hw_ring_tx_stop(self->aq_hw,
       &ring[AQ_VEC_TX_ID]);

  self->aq_hw_ops->hw_ring_rx_stop(self->aq_hw,
       &ring[AQ_VEC_RX_ID]);
 }

 napi_disable(&self->napi);
}
