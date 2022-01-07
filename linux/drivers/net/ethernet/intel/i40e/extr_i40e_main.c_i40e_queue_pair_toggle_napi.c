
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i40e_vsi {int netdev; struct i40e_ring** rx_rings; } ;
struct i40e_ring {struct i40e_q_vector* q_vector; } ;
struct TYPE_4__ {scalar_t__ ring; } ;
struct TYPE_3__ {scalar_t__ ring; } ;
struct i40e_q_vector {int napi; TYPE_2__ tx; TYPE_1__ rx; } ;


 int napi_disable (int *) ;
 int napi_enable (int *) ;

__attribute__((used)) static void i40e_queue_pair_toggle_napi(struct i40e_vsi *vsi, int queue_pair,
     bool enable)
{
 struct i40e_ring *rxr = vsi->rx_rings[queue_pair];
 struct i40e_q_vector *q_vector = rxr->q_vector;

 if (!vsi->netdev)
  return;


 if (q_vector->rx.ring || q_vector->tx.ring) {
  if (enable)
   napi_enable(&q_vector->napi);
  else
   napi_disable(&q_vector->napi);
 }
}
