
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; } ;
struct qede_tx_queue {int doorbell_addr; TYPE_1__ tx_db; } ;


 int barrier () ;
 int wmb () ;
 int writel (int ,int ) ;

__attribute__((used)) static inline void qede_update_tx_producer(struct qede_tx_queue *txq)
{



 wmb();
 barrier();
 writel(txq->tx_db.raw, txq->doorbell_addr);





 wmb();
}
