
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_tx_queue {int dummy; } ;
struct ef4_nic {unsigned int n_tx_channels; unsigned int tx_channel_offset; TYPE_1__** channel; } ;
struct TYPE_2__ {struct ef4_tx_queue* tx_queue; } ;


 int EF4_BUG_ON_PARANOID (int) ;
 unsigned int EF4_TXQ_TYPES ;

__attribute__((used)) static inline struct ef4_tx_queue *
ef4_get_tx_queue(struct ef4_nic *efx, unsigned index, unsigned type)
{
 EF4_BUG_ON_PARANOID(index >= efx->n_tx_channels ||
       type >= EF4_TXQ_TYPES);
 return &efx->channel[efx->tx_channel_offset + index]->tx_queue[type];
}
