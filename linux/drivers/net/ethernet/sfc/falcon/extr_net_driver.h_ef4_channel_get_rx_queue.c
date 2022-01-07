
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_rx_queue {int dummy; } ;
struct ef4_channel {struct ef4_rx_queue rx_queue; } ;


 int EF4_BUG_ON_PARANOID (int) ;
 int ef4_channel_has_rx_queue (struct ef4_channel*) ;

__attribute__((used)) static inline struct ef4_rx_queue *
ef4_channel_get_rx_queue(struct ef4_channel *channel)
{
 EF4_BUG_ON_PARANOID(!ef4_channel_has_rx_queue(channel));
 return &channel->rx_queue;
}
