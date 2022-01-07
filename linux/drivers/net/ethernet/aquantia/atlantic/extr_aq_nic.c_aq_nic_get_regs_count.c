
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* aq_hw_caps; } ;
struct aq_nic_s {TYPE_2__ aq_nic_cfg; } ;
struct TYPE_3__ {int mac_regs_count; } ;



int aq_nic_get_regs_count(struct aq_nic_s *self)
{
 return self->aq_nic_cfg.aq_hw_caps->mac_regs_count;
}
