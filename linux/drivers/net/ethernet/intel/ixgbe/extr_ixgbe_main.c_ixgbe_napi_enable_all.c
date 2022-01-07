
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbe_adapter {int num_q_vectors; TYPE_1__** q_vector; } ;
struct TYPE_2__ {int napi; } ;


 int napi_enable (int *) ;

__attribute__((used)) static void ixgbe_napi_enable_all(struct ixgbe_adapter *adapter)
{
 int q_idx;

 for (q_idx = 0; q_idx < adapter->num_q_vectors; q_idx++)
  napi_enable(&adapter->q_vector[q_idx]->napi);
}
