
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_tx_queue {int txd; int * buffer; struct ef4_channel* channel; } ;
struct ef4_rx_queue {int slow_fill; int rxd; int * buffer; } ;
struct TYPE_2__ {scalar_t__ state; scalar_t__ napi_id; int napi_hash_node; } ;
struct ef4_channel {struct ef4_rx_queue rx_queue; struct ef4_tx_queue* tx_queue; int eventq; TYPE_1__ napi_str; int * napi_dev; } ;


 int EF4_TXQ_TYPES ;
 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int ef4_rx_slow_fill ;
 struct ef4_channel* kmalloc (int,int ) ;
 int memset (int *,int ,int) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static struct ef4_channel *
ef4_copy_channel(const struct ef4_channel *old_channel)
{
 struct ef4_channel *channel;
 struct ef4_rx_queue *rx_queue;
 struct ef4_tx_queue *tx_queue;
 int j;

 channel = kmalloc(sizeof(*channel), GFP_KERNEL);
 if (!channel)
  return ((void*)0);

 *channel = *old_channel;

 channel->napi_dev = ((void*)0);
 INIT_HLIST_NODE(&channel->napi_str.napi_hash_node);
 channel->napi_str.napi_id = 0;
 channel->napi_str.state = 0;
 memset(&channel->eventq, 0, sizeof(channel->eventq));

 for (j = 0; j < EF4_TXQ_TYPES; j++) {
  tx_queue = &channel->tx_queue[j];
  if (tx_queue->channel)
   tx_queue->channel = channel;
  tx_queue->buffer = ((void*)0);
  memset(&tx_queue->txd, 0, sizeof(tx_queue->txd));
 }

 rx_queue = &channel->rx_queue;
 rx_queue->buffer = ((void*)0);
 memset(&rx_queue->rxd, 0, sizeof(rx_queue->rxd));
 timer_setup(&rx_queue->slow_fill, ef4_rx_slow_fill, 0);

 return channel;
}
