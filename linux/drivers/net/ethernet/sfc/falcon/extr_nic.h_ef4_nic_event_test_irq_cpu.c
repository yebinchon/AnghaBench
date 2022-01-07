
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_channel {int event_test_cpu; } ;


 int READ_ONCE (int ) ;

__attribute__((used)) static inline int ef4_nic_event_test_irq_cpu(struct ef4_channel *channel)
{
 return READ_ONCE(channel->event_test_cpu);
}
