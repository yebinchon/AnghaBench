
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct efx_channel {int eventq_mask; TYPE_1__ eventq; int efx; } ;
typedef int efx_qword_t ;


 int GFP_KERNEL ;
 int efx_nic_alloc_buffer (int ,int *,int,int ) ;

__attribute__((used)) static int efx_ef10_ev_probe(struct efx_channel *channel)
{
 return efx_nic_alloc_buffer(channel->efx, &channel->eventq.buf,
        (channel->eventq_mask + 1) *
        sizeof(efx_qword_t),
        GFP_KERNEL);
}
