
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_tx_queue {int queue; struct ef4_channel* channel; struct ef4_nic* efx; } ;
struct ef4_rx_queue {int slow_fill; struct ef4_nic* efx; } ;
struct ef4_nic {int dummy; } ;
struct ef4_channel {int channel; struct ef4_rx_queue rx_queue; struct ef4_tx_queue* tx_queue; int * type; struct ef4_nic* efx; } ;


 int EF4_TXQ_TYPES ;
 int GFP_KERNEL ;
 int ef4_default_channel_type ;
 int ef4_rx_slow_fill ;
 struct ef4_channel* kzalloc (int,int ) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static struct ef4_channel *
ef4_alloc_channel(struct ef4_nic *efx, int i, struct ef4_channel *old_channel)
{
 struct ef4_channel *channel;
 struct ef4_rx_queue *rx_queue;
 struct ef4_tx_queue *tx_queue;
 int j;

 channel = kzalloc(sizeof(*channel), GFP_KERNEL);
 if (!channel)
  return ((void*)0);

 channel->efx = efx;
 channel->channel = i;
 channel->type = &ef4_default_channel_type;

 for (j = 0; j < EF4_TXQ_TYPES; j++) {
  tx_queue = &channel->tx_queue[j];
  tx_queue->efx = efx;
  tx_queue->queue = i * EF4_TXQ_TYPES + j;
  tx_queue->channel = channel;
 }

 rx_queue = &channel->rx_queue;
 rx_queue->efx = efx;
 timer_setup(&rx_queue->slow_fill, ef4_rx_slow_fill, 0);

 return channel;
}
