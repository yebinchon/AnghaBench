
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int match_flags; int dst_addr; int src_addr; int vlan_tci; } ;
struct igc_nfc_filter {int action; TYPE_1__ filter; int etype_reg_index; } ;
struct igc_adapter {int dummy; } ;


 int IGC_FILTER_FLAG_DST_MAC_ADDR ;
 int IGC_FILTER_FLAG_ETHER_TYPE ;
 int IGC_FILTER_FLAG_SRC_MAC_ADDR ;
 int IGC_FILTER_FLAG_VLAN_TCI ;
 int IGC_MAC_STATE_SRC_ADDR ;
 int igc_clear_etype_filter_regs (struct igc_adapter*,int ) ;
 int igc_clear_vlan_prio_filter (struct igc_adapter*,int ) ;
 int igc_del_mac_steering_filter (struct igc_adapter*,int ,int ,int ) ;
 int ntohs (int ) ;

int igc_erase_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
{
 if (input->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE)
  igc_clear_etype_filter_regs(adapter,
         input->etype_reg_index);

 if (input->filter.match_flags & IGC_FILTER_FLAG_VLAN_TCI)
  igc_clear_vlan_prio_filter(adapter,
        ntohs(input->filter.vlan_tci));

 if (input->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR)
  igc_del_mac_steering_filter(adapter, input->filter.src_addr,
         input->action,
         IGC_MAC_STATE_SRC_ADDR);

 if (input->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR)
  igc_del_mac_steering_filter(adapter, input->filter.dst_addr,
         input->action, 0);

 return 0;
}
