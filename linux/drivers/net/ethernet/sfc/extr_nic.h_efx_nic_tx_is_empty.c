
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_tx_queue {int packet_write_count; TYPE_2__* efx; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int option_descriptors; } ;


 int EFX_WARN_ON_ONCE_PARANOID (int) ;
 int __efx_nic_tx_is_empty (struct efx_tx_queue*,int ) ;

__attribute__((used)) static inline bool efx_nic_tx_is_empty(struct efx_tx_queue *tx_queue)
{
 EFX_WARN_ON_ONCE_PARANOID(!tx_queue->efx->type->option_descriptors);
 return __efx_nic_tx_is_empty(tx_queue, tx_queue->packet_write_count);
}
