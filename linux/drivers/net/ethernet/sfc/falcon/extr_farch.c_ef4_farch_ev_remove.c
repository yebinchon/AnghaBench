
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_channel {int eventq; int efx; } ;


 int ef4_free_special_buffer (int ,int *) ;

void ef4_farch_ev_remove(struct ef4_channel *channel)
{
 ef4_free_special_buffer(channel->efx, &channel->eventq);
}
