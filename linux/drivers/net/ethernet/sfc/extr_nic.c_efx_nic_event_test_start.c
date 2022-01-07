
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_channel {int event_test_cpu; TYPE_2__* efx; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* ev_test_generate ) (struct efx_channel*) ;} ;


 int smp_wmb () ;
 int stub1 (struct efx_channel*) ;

void efx_nic_event_test_start(struct efx_channel *channel)
{
 channel->event_test_cpu = -1;
 smp_wmb();
 channel->efx->type->ev_test_generate(channel);
}
