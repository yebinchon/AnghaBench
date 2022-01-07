
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_q_vector {int napi; } ;
struct fm10k_intfc {int num_q_vectors; struct fm10k_q_vector** q_vector; } ;


 int napi_enable (int *) ;

__attribute__((used)) static void fm10k_napi_enable_all(struct fm10k_intfc *interface)
{
 struct fm10k_q_vector *q_vector;
 int q_idx;

 for (q_idx = 0; q_idx < interface->num_q_vectors; q_idx++) {
  q_vector = interface->q_vector[q_idx];
  napi_enable(&q_vector->napi);
 }
}
