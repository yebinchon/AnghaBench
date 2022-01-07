
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct netdev_hw_addr_list {int dummy; } ;
struct mwl8k_cmd_pkt {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 struct mwl8k_cmd_pkt* __mwl8k_cmd_mac_multicast_adr (struct ieee80211_hw*,int ,struct netdev_hw_addr_list*) ;

__attribute__((used)) static u64 mwl8k_prepare_multicast(struct ieee80211_hw *hw,
       struct netdev_hw_addr_list *mc_list)
{
 struct mwl8k_cmd_pkt *cmd;
 cmd = __mwl8k_cmd_mac_multicast_adr(hw, 0, mc_list);

 return (unsigned long)cmd;
}
