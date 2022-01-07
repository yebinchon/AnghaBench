
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rxq {int queue_size; int read; int write; } ;


 int WARN_ON (int) ;

__attribute__((used)) static int iwl_rxq_space(const struct iwl_rxq *rxq)
{

 WARN_ON(rxq->queue_size & (rxq->queue_size - 1));







 return (rxq->read - rxq->write - 1) & (rxq->queue_size - 1);
}
