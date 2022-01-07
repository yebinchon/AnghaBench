
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct eth_filter_rules_cmd {int state; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ACCEPT_ALL_MULTICAST ;
 int BNX2X_ACCEPT_ALL_UNICAST ;
 int BNX2X_ACCEPT_ANY_VLAN ;
 int BNX2X_ACCEPT_BROADCAST ;
 int BNX2X_ACCEPT_MULTICAST ;
 int BNX2X_ACCEPT_UNICAST ;
 int BNX2X_ACCEPT_UNMATCHED ;
 int ETH_FILTER_RULES_CMD_ACCEPT_ANY_VLAN ;
 int ETH_FILTER_RULES_CMD_BCAST_ACCEPT_ALL ;
 int ETH_FILTER_RULES_CMD_MCAST_ACCEPT_ALL ;
 int ETH_FILTER_RULES_CMD_MCAST_DROP_ALL ;
 int ETH_FILTER_RULES_CMD_UCAST_ACCEPT_ALL ;
 int ETH_FILTER_RULES_CMD_UCAST_ACCEPT_UNMATCHED ;
 int ETH_FILTER_RULES_CMD_UCAST_DROP_ALL ;
 int cpu_to_le16 (int) ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static inline void bnx2x_rx_mode_set_cmd_state_e2(struct bnx2x *bp,
    unsigned long *accept_flags,
    struct eth_filter_rules_cmd *cmd,
    bool clear_accept_all)
{
 u16 state;


 state = ETH_FILTER_RULES_CMD_UCAST_DROP_ALL |
  ETH_FILTER_RULES_CMD_MCAST_DROP_ALL;

 if (test_bit(BNX2X_ACCEPT_UNICAST, accept_flags))
  state &= ~ETH_FILTER_RULES_CMD_UCAST_DROP_ALL;

 if (test_bit(BNX2X_ACCEPT_MULTICAST, accept_flags))
  state &= ~ETH_FILTER_RULES_CMD_MCAST_DROP_ALL;

 if (test_bit(BNX2X_ACCEPT_ALL_UNICAST, accept_flags)) {
  state &= ~ETH_FILTER_RULES_CMD_UCAST_DROP_ALL;
  state |= ETH_FILTER_RULES_CMD_UCAST_ACCEPT_ALL;
 }

 if (test_bit(BNX2X_ACCEPT_ALL_MULTICAST, accept_flags)) {
  state |= ETH_FILTER_RULES_CMD_MCAST_ACCEPT_ALL;
  state &= ~ETH_FILTER_RULES_CMD_MCAST_DROP_ALL;
 }

 if (test_bit(BNX2X_ACCEPT_BROADCAST, accept_flags))
  state |= ETH_FILTER_RULES_CMD_BCAST_ACCEPT_ALL;

 if (test_bit(BNX2X_ACCEPT_UNMATCHED, accept_flags)) {
  state &= ~ETH_FILTER_RULES_CMD_UCAST_DROP_ALL;
  state |= ETH_FILTER_RULES_CMD_UCAST_ACCEPT_UNMATCHED;
 }

 if (test_bit(BNX2X_ACCEPT_ANY_VLAN, accept_flags))
  state |= ETH_FILTER_RULES_CMD_ACCEPT_ANY_VLAN;


 if (clear_accept_all) {
  state &= ~ETH_FILTER_RULES_CMD_MCAST_ACCEPT_ALL;
  state &= ~ETH_FILTER_RULES_CMD_BCAST_ACCEPT_ALL;
  state &= ~ETH_FILTER_RULES_CMD_UCAST_ACCEPT_ALL;
  state &= ~ETH_FILTER_RULES_CMD_UCAST_ACCEPT_UNMATCHED;
 }

 cmd->state = cpu_to_le16(state);
}
