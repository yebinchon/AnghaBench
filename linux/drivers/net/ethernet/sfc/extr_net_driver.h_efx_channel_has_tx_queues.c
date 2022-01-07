
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_channel {TYPE_1__* type; } ;
struct TYPE_2__ {scalar_t__ (* want_txqs ) (struct efx_channel*) ;} ;


 scalar_t__ stub1 (struct efx_channel*) ;

__attribute__((used)) static inline bool efx_channel_has_tx_queues(struct efx_channel *channel)
{
 return channel->type && channel->type->want_txqs &&
    channel->type->want_txqs(channel);
}
