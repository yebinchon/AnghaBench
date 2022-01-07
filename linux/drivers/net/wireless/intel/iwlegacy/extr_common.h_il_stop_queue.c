
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct il_tx_queue {int swq_id; } ;
struct il_priv {int queue_stopped; } ;


 int _il_stop_queue (struct il_priv*,int) ;
 int test_and_set_bit (int,int ) ;

__attribute__((used)) static inline void
il_stop_queue(struct il_priv *il, struct il_tx_queue *txq)
{
 u8 queue = txq->swq_id;
 u8 ac = queue & 3;
 u8 hwq = (queue >> 2) & 0x1f;

 if (!test_and_set_bit(hwq, il->queue_stopped))
  _il_stop_queue(il, ac);
}
