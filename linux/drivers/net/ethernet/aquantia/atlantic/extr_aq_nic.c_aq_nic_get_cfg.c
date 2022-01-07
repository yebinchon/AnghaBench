
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_nic_cfg_s {int dummy; } ;
struct aq_nic_s {struct aq_nic_cfg_s aq_nic_cfg; } ;



struct aq_nic_cfg_s *aq_nic_get_cfg(struct aq_nic_s *self)
{
 return &self->aq_nic_cfg;
}
