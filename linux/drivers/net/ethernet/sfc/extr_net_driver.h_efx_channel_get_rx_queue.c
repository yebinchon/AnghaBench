
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {int dummy; } ;
struct efx_channel {struct efx_rx_queue rx_queue; } ;


 int EFX_WARN_ON_ONCE_PARANOID (int) ;
 int efx_channel_has_rx_queue (struct efx_channel*) ;

__attribute__((used)) static inline struct efx_rx_queue *
efx_channel_get_rx_queue(struct efx_channel *channel)
{
 EFX_WARN_ON_ONCE_PARANOID(!efx_channel_has_rx_queue(channel));
 return &channel->rx_queue;
}
