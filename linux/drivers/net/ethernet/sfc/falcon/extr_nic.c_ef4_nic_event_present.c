
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_channel {int eventq_read_ptr; } ;


 int ef4_event (struct ef4_channel*,int ) ;
 int ef4_event_present (int ) ;

bool ef4_nic_event_present(struct ef4_channel *channel)
{
 return ef4_event_present(ef4_event(channel, channel->eventq_read_ptr));
}
