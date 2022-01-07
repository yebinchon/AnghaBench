
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_channel {int event_test_cpu; } ;


 int ef4_schedule_channel (struct ef4_channel*) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static inline void ef4_schedule_channel_irq(struct ef4_channel *channel)
{
 channel->event_test_cpu = raw_smp_processor_id();
 ef4_schedule_channel(channel);
}
