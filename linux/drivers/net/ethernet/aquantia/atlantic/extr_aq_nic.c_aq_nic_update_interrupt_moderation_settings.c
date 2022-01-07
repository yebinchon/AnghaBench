
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aq_nic_s {int aq_hw; TYPE_1__* aq_hw_ops; } ;
struct TYPE_2__ {int (* hw_interrupt_moderation_set ) (int ) ;} ;


 int stub1 (int ) ;

int aq_nic_update_interrupt_moderation_settings(struct aq_nic_s *self)
{
 return self->aq_hw_ops->hw_interrupt_moderation_set(self->aq_hw);
}
