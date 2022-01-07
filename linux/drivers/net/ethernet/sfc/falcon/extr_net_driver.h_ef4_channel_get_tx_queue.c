
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_tx_queue {int dummy; } ;
struct ef4_channel {struct ef4_tx_queue* tx_queue; } ;


 int EF4_BUG_ON_PARANOID (int) ;
 unsigned int EF4_TXQ_TYPES ;
 int ef4_channel_has_tx_queues (struct ef4_channel*) ;

__attribute__((used)) static inline struct ef4_tx_queue *
ef4_channel_get_tx_queue(struct ef4_channel *channel, unsigned type)
{
 EF4_BUG_ON_PARANOID(!ef4_channel_has_tx_queues(channel) ||
       type >= EF4_TXQ_TYPES);
 return &channel->tx_queue[type];
}
