
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aq_vec_s {unsigned int tx_rings; int napi; int aq_hw; TYPE_1__* aq_hw_ops; struct aq_ring_s** ring; } ;
struct aq_ring_s {int dummy; } ;
struct TYPE_2__ {int (* hw_ring_tx_start ) (int ,struct aq_ring_s*) ;int (* hw_ring_rx_start ) (int ,struct aq_ring_s*) ;} ;


 size_t AQ_VEC_RX_ID ;
 size_t AQ_VEC_TX_ID ;
 int napi_enable (int *) ;
 int stub1 (int ,struct aq_ring_s*) ;
 int stub2 (int ,struct aq_ring_s*) ;

int aq_vec_start(struct aq_vec_s *self)
{
 struct aq_ring_s *ring = ((void*)0);
 unsigned int i = 0U;
 int err = 0;

 for (i = 0U, ring = self->ring[0];
  self->tx_rings > i; ++i, ring = self->ring[i]) {
  err = self->aq_hw_ops->hw_ring_tx_start(self->aq_hw,
       &ring[AQ_VEC_TX_ID]);
  if (err < 0)
   goto err_exit;

  err = self->aq_hw_ops->hw_ring_rx_start(self->aq_hw,
       &ring[AQ_VEC_RX_ID]);
  if (err < 0)
   goto err_exit;
 }

 napi_enable(&self->napi);

err_exit:
 return err;
}
