
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_rx_queue {int dummy; } ;
struct TYPE_2__ {int channel; } ;


 TYPE_1__* ef4_rx_queue_channel (struct ef4_rx_queue*) ;

__attribute__((used)) static inline int ef4_rx_queue_index(struct ef4_rx_queue *rx_queue)
{
 return ef4_rx_queue_channel(rx_queue)->channel;
}
