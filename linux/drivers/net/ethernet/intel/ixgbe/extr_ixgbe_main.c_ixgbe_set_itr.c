
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int itr; } ;
struct ixgbe_q_vector {int itr; TYPE_1__ tx; TYPE_1__ rx; } ;


 int IXGBE_ITR_ADAPTIVE_LATENCY ;
 int ixgbe_update_itr (struct ixgbe_q_vector*,TYPE_1__*) ;
 int ixgbe_write_eitr (struct ixgbe_q_vector*) ;
 int min (int ,int ) ;

__attribute__((used)) static void ixgbe_set_itr(struct ixgbe_q_vector *q_vector)
{
 u32 new_itr;

 ixgbe_update_itr(q_vector, &q_vector->tx);
 ixgbe_update_itr(q_vector, &q_vector->rx);


 new_itr = min(q_vector->rx.itr, q_vector->tx.itr);


 new_itr &= ~IXGBE_ITR_ADAPTIVE_LATENCY;
 new_itr <<= 2;

 if (new_itr != q_vector->itr) {

  q_vector->itr = new_itr;

  ixgbe_write_eitr(q_vector);
 }
}
