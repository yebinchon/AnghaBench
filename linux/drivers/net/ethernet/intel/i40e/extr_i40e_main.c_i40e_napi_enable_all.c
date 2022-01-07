
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i40e_vsi {int num_q_vectors; struct i40e_q_vector** q_vectors; int netdev; } ;
struct TYPE_4__ {scalar_t__ ring; } ;
struct TYPE_3__ {scalar_t__ ring; } ;
struct i40e_q_vector {int napi; TYPE_2__ tx; TYPE_1__ rx; } ;


 int napi_enable (int *) ;

__attribute__((used)) static void i40e_napi_enable_all(struct i40e_vsi *vsi)
{
 int q_idx;

 if (!vsi->netdev)
  return;

 for (q_idx = 0; q_idx < vsi->num_q_vectors; q_idx++) {
  struct i40e_q_vector *q_vector = vsi->q_vectors[q_idx];

  if (q_vector->rx.ring || q_vector->tx.ring)
   napi_enable(&q_vector->napi);
 }
}
