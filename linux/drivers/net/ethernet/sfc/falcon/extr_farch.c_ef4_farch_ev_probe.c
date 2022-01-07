
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;
struct ef4_channel {int eventq_mask; int eventq; struct ef4_nic* efx; } ;
typedef int ef4_qword_t ;


 int ef4_alloc_special_buffer (struct ef4_nic*,int *,unsigned int) ;

int ef4_farch_ev_probe(struct ef4_channel *channel)
{
 struct ef4_nic *efx = channel->efx;
 unsigned entries;

 entries = channel->eventq_mask + 1;
 return ef4_alloc_special_buffer(efx, &channel->eventq,
     entries * sizeof(ef4_qword_t));
}
