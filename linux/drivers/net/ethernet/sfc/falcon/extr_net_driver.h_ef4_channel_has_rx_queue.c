
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ core_index; } ;
struct ef4_channel {TYPE_1__ rx_queue; } ;



__attribute__((used)) static inline bool ef4_channel_has_rx_queue(struct ef4_channel *channel)
{
 return channel->rx_queue.core_index >= 0;
}
