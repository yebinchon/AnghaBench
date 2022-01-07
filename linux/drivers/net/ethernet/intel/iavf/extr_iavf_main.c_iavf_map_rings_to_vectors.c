
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_adapter {int num_active_queues; int num_msix_vectors; int aq_required; } ;


 int IAVF_FLAG_AQ_MAP_VECTORS ;
 int NONQ_VECS ;
 int iavf_map_vector_to_rxq (struct iavf_adapter*,int,int) ;
 int iavf_map_vector_to_txq (struct iavf_adapter*,int,int) ;

__attribute__((used)) static void iavf_map_rings_to_vectors(struct iavf_adapter *adapter)
{
 int rings_remaining = adapter->num_active_queues;
 int ridx = 0, vidx = 0;
 int q_vectors;

 q_vectors = adapter->num_msix_vectors - NONQ_VECS;

 for (; ridx < rings_remaining; ridx++) {
  iavf_map_vector_to_rxq(adapter, vidx, ridx);
  iavf_map_vector_to_txq(adapter, vidx, ridx);




  if (++vidx >= q_vectors)
   vidx = 0;
 }

 adapter->aq_required |= IAVF_FLAG_AQ_MAP_VECTORS;
}
