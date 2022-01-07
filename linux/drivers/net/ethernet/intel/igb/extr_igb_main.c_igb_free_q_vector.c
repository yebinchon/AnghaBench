
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igb_q_vector {int dummy; } ;
struct igb_adapter {struct igb_q_vector** q_vector; } ;


 int kfree_rcu (struct igb_q_vector*,int ) ;
 int rcu ;

__attribute__((used)) static void igb_free_q_vector(struct igb_adapter *adapter, int v_idx)
{
 struct igb_q_vector *q_vector = adapter->q_vector[v_idx];

 adapter->q_vector[v_idx] = ((void*)0);




 if (q_vector)
  kfree_rcu(q_vector, rcu);
}
