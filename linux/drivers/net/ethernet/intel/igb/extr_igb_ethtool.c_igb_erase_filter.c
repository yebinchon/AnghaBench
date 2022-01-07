
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int match_flags; int dst_addr; int src_addr; int vlan_tci; } ;
struct igb_nfc_filter {int action; TYPE_1__ filter; int etype_reg_index; } ;
struct igb_adapter {int dummy; } ;


 int IGB_FILTER_FLAG_DST_MAC_ADDR ;
 int IGB_FILTER_FLAG_ETHER_TYPE ;
 int IGB_FILTER_FLAG_SRC_MAC_ADDR ;
 int IGB_FILTER_FLAG_VLAN_TCI ;
 int IGB_MAC_STATE_SRC_ADDR ;
 int igb_clear_etype_filter_regs (struct igb_adapter*,int ) ;
 int igb_clear_vlan_prio_filter (struct igb_adapter*,int ) ;
 int igb_del_mac_steering_filter (struct igb_adapter*,int ,int ,int ) ;
 int ntohs (int ) ;

int igb_erase_filter(struct igb_adapter *adapter, struct igb_nfc_filter *input)
{
 if (input->filter.match_flags & IGB_FILTER_FLAG_ETHER_TYPE)
  igb_clear_etype_filter_regs(adapter,
         input->etype_reg_index);

 if (input->filter.match_flags & IGB_FILTER_FLAG_VLAN_TCI)
  igb_clear_vlan_prio_filter(adapter,
        ntohs(input->filter.vlan_tci));

 if (input->filter.match_flags & IGB_FILTER_FLAG_SRC_MAC_ADDR)
  igb_del_mac_steering_filter(adapter, input->filter.src_addr,
         input->action,
         IGB_MAC_STATE_SRC_ADDR);

 if (input->filter.match_flags & IGB_FILTER_FLAG_DST_MAC_ADDR)
  igb_del_mac_steering_filter(adapter, input->filter.dst_addr,
         input->action, 0);

 return 0;
}
