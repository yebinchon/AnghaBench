
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_rx_filter_vlan {int queue; int vlan_id; scalar_t__ enable; } ;
struct aq_hw_s {int dummy; } ;


 int AQ_VLAN_MAX_FILTERS ;
 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_rpf_vlan_flr_act_set (struct aq_hw_s*,unsigned int,int) ;
 int hw_atl_rpf_vlan_flr_en_set (struct aq_hw_s*,unsigned int,int) ;
 int hw_atl_rpf_vlan_id_flr_set (struct aq_hw_s*,int ,int) ;
 int hw_atl_rpf_vlan_rxq_en_flr_set (struct aq_hw_s*,unsigned int,int) ;
 int hw_atl_rpf_vlan_rxq_flr_set (struct aq_hw_s*,int,int) ;

__attribute__((used)) static int hw_atl_b0_hw_vlan_set(struct aq_hw_s *self,
     struct aq_rx_filter_vlan *aq_vlans)
{
 int i;

 for (i = 0; i < AQ_VLAN_MAX_FILTERS; i++) {
  hw_atl_rpf_vlan_flr_en_set(self, 0U, i);
  hw_atl_rpf_vlan_rxq_en_flr_set(self, 0U, i);
  if (aq_vlans[i].enable) {
   hw_atl_rpf_vlan_id_flr_set(self,
         aq_vlans[i].vlan_id,
         i);
   hw_atl_rpf_vlan_flr_act_set(self, 1U, i);
   hw_atl_rpf_vlan_flr_en_set(self, 1U, i);
   if (aq_vlans[i].queue != 0xFF) {
    hw_atl_rpf_vlan_rxq_flr_set(self,
           aq_vlans[i].queue,
           i);
    hw_atl_rpf_vlan_rxq_en_flr_set(self, 1U, i);
   }
  }
 }

 return aq_hw_err_from_flags(self);
}
