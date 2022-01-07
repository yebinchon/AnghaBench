
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int mbps; } ;
struct aq_nic_s {TYPE_1__ link_status; } ;



unsigned int aq_nic_get_link_speed(struct aq_nic_s *self)
{
 return self->link_status.mbps;
}
