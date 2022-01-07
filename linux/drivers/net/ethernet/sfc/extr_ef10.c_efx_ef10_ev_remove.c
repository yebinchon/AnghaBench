
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct efx_channel {TYPE_1__ eventq; int efx; } ;


 int efx_nic_free_buffer (int ,int *) ;

__attribute__((used)) static void efx_ef10_ev_remove(struct efx_channel *channel)
{
 efx_nic_free_buffer(channel->efx, &channel->eventq.buf);
}
