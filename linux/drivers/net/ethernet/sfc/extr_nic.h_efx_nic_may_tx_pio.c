
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {scalar_t__ piobuf; } ;


 scalar_t__ efx_nic_tx_is_empty (struct efx_tx_queue*) ;
 struct efx_tx_queue* efx_tx_queue_partner (struct efx_tx_queue*) ;

__attribute__((used)) static inline bool efx_nic_may_tx_pio(struct efx_tx_queue *tx_queue)
{
 struct efx_tx_queue *partner = efx_tx_queue_partner(tx_queue);

 return tx_queue->piobuf && efx_nic_tx_is_empty(tx_queue) &&
        efx_nic_tx_is_empty(partner);
}
