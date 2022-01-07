
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct aq_nic_s {int aq_hw; TYPE_1__* aq_hw_ops; } ;
struct TYPE_2__ {int (* hw_get_fw_version ) (int ,unsigned int*) ;} ;


 int stub1 (int ,unsigned int*) ;

u32 aq_nic_get_fw_version(struct aq_nic_s *self)
{
 u32 fw_version = 0U;

 self->aq_hw_ops->hw_get_fw_version(self->aq_hw, &fw_version);

 return fw_version;
}
