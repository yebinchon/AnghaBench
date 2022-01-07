
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mtu; } ;
struct aq_nic_s {TYPE_1__ aq_nic_cfg; } ;



int aq_nic_set_mtu(struct aq_nic_s *self, int new_mtu)
{
 self->aq_nic_cfg.mtu = new_mtu;

 return 0;
}
