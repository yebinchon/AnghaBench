
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {int queue; struct efx_channel* channel; struct efx_nic* efx; } ;
struct efx_rx_queue {int slow_fill; struct efx_nic* efx; } ;
struct efx_nic {int dummy; } ;
struct efx_channel {int channel; struct efx_rx_queue rx_queue; int filter_work; struct efx_tx_queue* tx_queue; int * type; struct efx_nic* efx; } ;


 int EFX_TXQ_TYPES ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int efx_default_channel_type ;
 int efx_filter_rfs_expire ;
 int efx_rx_slow_fill ;
 struct efx_channel* kzalloc (int,int ) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static struct efx_channel *
efx_alloc_channel(struct efx_nic *efx, int i, struct efx_channel *old_channel)
{
 struct efx_channel *channel;
 struct efx_rx_queue *rx_queue;
 struct efx_tx_queue *tx_queue;
 int j;

 channel = kzalloc(sizeof(*channel), GFP_KERNEL);
 if (!channel)
  return ((void*)0);

 channel->efx = efx;
 channel->channel = i;
 channel->type = &efx_default_channel_type;

 for (j = 0; j < EFX_TXQ_TYPES; j++) {
  tx_queue = &channel->tx_queue[j];
  tx_queue->efx = efx;
  tx_queue->queue = i * EFX_TXQ_TYPES + j;
  tx_queue->channel = channel;
 }





 rx_queue = &channel->rx_queue;
 rx_queue->efx = efx;
 timer_setup(&rx_queue->slow_fill, efx_rx_slow_fill, 0);

 return channel;
}
