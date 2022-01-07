
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_tx_queue {TYPE_2__* efx; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* tx_probe ) (struct efx_tx_queue*) ;} ;


 int stub1 (struct efx_tx_queue*) ;

__attribute__((used)) static inline int efx_nic_probe_tx(struct efx_tx_queue *tx_queue)
{
 return tx_queue->efx->type->tx_probe(tx_queue);
}
