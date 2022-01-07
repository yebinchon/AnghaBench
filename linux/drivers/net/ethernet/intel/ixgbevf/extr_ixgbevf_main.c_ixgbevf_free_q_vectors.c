
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_adapter {int num_msix_vectors; } ;


 int NON_Q_VECTORS ;
 int ixgbevf_free_q_vector (struct ixgbevf_adapter*,int) ;

__attribute__((used)) static void ixgbevf_free_q_vectors(struct ixgbevf_adapter *adapter)
{
 int q_vectors = adapter->num_msix_vectors - NON_Q_VECTORS;

 while (q_vectors) {
  q_vectors--;
  ixgbevf_free_q_vector(adapter, q_vectors);
 }
}
