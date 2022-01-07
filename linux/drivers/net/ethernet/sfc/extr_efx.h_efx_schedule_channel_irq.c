
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_channel {int event_test_cpu; } ;


 int efx_schedule_channel (struct efx_channel*) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static inline void efx_schedule_channel_irq(struct efx_channel *channel)
{
 channel->event_test_cpu = raw_smp_processor_id();
 efx_schedule_channel(channel);
}
