
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_q_vector {int napi; } ;
struct iavf_adapter {int num_msix_vectors; int num_active_queues; struct iavf_q_vector* q_vectors; } ;


 int NONQ_VECS ;
 int kfree (struct iavf_q_vector*) ;
 int netif_napi_del (int *) ;

__attribute__((used)) static void iavf_free_q_vectors(struct iavf_adapter *adapter)
{
 int q_idx, num_q_vectors;
 int napi_vectors;

 if (!adapter->q_vectors)
  return;

 num_q_vectors = adapter->num_msix_vectors - NONQ_VECS;
 napi_vectors = adapter->num_active_queues;

 for (q_idx = 0; q_idx < num_q_vectors; q_idx++) {
  struct iavf_q_vector *q_vector = &adapter->q_vectors[q_idx];

  if (q_idx < napi_vectors)
   netif_napi_del(&q_vector->napi);
 }
 kfree(adapter->q_vectors);
 adapter->q_vectors = ((void*)0);
}
