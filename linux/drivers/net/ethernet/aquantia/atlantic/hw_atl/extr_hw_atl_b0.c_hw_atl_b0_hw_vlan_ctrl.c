
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_hw_s {int dummy; } ;


 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_rpf_vlan_prom_mode_en_set (struct aq_hw_s*,int) ;

__attribute__((used)) static int hw_atl_b0_hw_vlan_ctrl(struct aq_hw_s *self, bool enable)
{

 hw_atl_rpf_vlan_prom_mode_en_set(self, !enable);

 return aq_hw_err_from_flags(self);
}
