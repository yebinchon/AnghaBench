
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aq_hw_s {TYPE_1__* aq_nic_cfg; } ;
struct TYPE_2__ {unsigned int mc_list_count; scalar_t__ is_mc_list_enabled; } ;


 unsigned int HW_ATL_A0_MAC_MAX ;
 unsigned int HW_ATL_A0_MAC_MIN ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_PROMISC ;
 scalar_t__ IS_FILTER_ENABLED (int ) ;
 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 int hw_atl_rpfl2_uc_flr_en_set (struct aq_hw_s*,unsigned int,unsigned int) ;
 int hw_atl_rpfl2broadcast_en_set (struct aq_hw_s*,scalar_t__) ;
 int hw_atl_rpfl2multicast_flr_en_set (struct aq_hw_s*,scalar_t__,int ) ;
 int hw_atl_rpfl2promiscuous_mode_en_set (struct aq_hw_s*,scalar_t__) ;

__attribute__((used)) static int hw_atl_a0_hw_packet_filter_set(struct aq_hw_s *self,
       unsigned int packet_filter)
{
 unsigned int i = 0U;

 hw_atl_rpfl2promiscuous_mode_en_set(self,
         IS_FILTER_ENABLED(IFF_PROMISC));
 hw_atl_rpfl2multicast_flr_en_set(self,
      IS_FILTER_ENABLED(IFF_MULTICAST), 0);
 hw_atl_rpfl2broadcast_en_set(self, IS_FILTER_ENABLED(IFF_BROADCAST));

 self->aq_nic_cfg->is_mc_list_enabled =
   IS_FILTER_ENABLED(IFF_MULTICAST);

 for (i = HW_ATL_A0_MAC_MIN; i < HW_ATL_A0_MAC_MAX; ++i)
  hw_atl_rpfl2_uc_flr_en_set(self,
        (self->aq_nic_cfg->is_mc_list_enabled &&
        (i <= self->aq_nic_cfg->mc_list_count)) ?
        1U : 0U, i);

 return aq_hw_err_from_flags(self);
}
