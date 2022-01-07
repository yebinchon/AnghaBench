
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aq_nic_s {unsigned int packet_filter; int aq_hw; TYPE_1__* aq_hw_ops; } ;
struct TYPE_2__ {int (* hw_packet_filter_set ) (int ,unsigned int) ;} ;


 int stub1 (int ,unsigned int) ;

int aq_nic_set_packet_filter(struct aq_nic_s *self, unsigned int flags)
{
 int err = 0;

 err = self->aq_hw_ops->hw_packet_filter_set(self->aq_hw, flags);
 if (err < 0)
  goto err_exit;

 self->packet_filter = flags;

err_exit:
 return err;
}
