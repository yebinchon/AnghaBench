
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_ring_container {int dummy; } ;
struct i40e_q_vector {struct i40e_ring_container rx; } ;



__attribute__((used)) static inline bool i40e_container_is_rx(struct i40e_q_vector *q_vector,
     struct i40e_ring_container *rc)
{
 return &q_vector->rx == rc;
}
