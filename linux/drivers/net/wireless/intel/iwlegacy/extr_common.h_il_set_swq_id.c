
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct il_tx_queue {int swq_id; } ;


 int BUG_ON (int) ;

__attribute__((used)) static inline void
il_set_swq_id(struct il_tx_queue *txq, u8 ac, u8 hwq)
{
 BUG_ON(ac > 3);
 BUG_ON(hwq > 31);

 txq->swq_id = (hwq << 2) | ac;
}
