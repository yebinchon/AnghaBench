
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_tx_queue {int queue; } ;


 int EF4_TXQ_TYPE_OFFLOAD ;

__attribute__((used)) static inline struct ef4_tx_queue *ef4_tx_queue_partner(struct ef4_tx_queue *tx_queue)
{
 if (tx_queue->queue & EF4_TXQ_TYPE_OFFLOAD)
  return tx_queue - EF4_TXQ_TYPE_OFFLOAD;
 else
  return tx_queue + EF4_TXQ_TYPE_OFFLOAD;
}
