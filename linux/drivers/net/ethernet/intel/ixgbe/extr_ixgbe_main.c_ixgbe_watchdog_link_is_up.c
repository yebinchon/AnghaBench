
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int link_speed; struct net_device* netdev; int state; int last_rx_ptp_check; int flags2; struct ixgbe_hw hw; } ;


 int IXGBE_FCCFG ;
 int IXGBE_FCCFG_TFCE_802_3X ;
 int IXGBE_FCTRL ;
 int IXGBE_FCTRL_RFCE ;
 int IXGBE_FLAG2_SEARCH_FOR_SFP ;






 int IXGBE_MFLCN ;
 int IXGBE_MFLCN_RFCE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RMCS ;
 int IXGBE_RMCS_TFCE_802_3X ;
 int __IXGBE_PTP_RUNNING ;
 int drv ;
 int e_info (int ,char*,char const*,char*) ;
 int ixgbe_check_vf_rate_limit (struct ixgbe_adapter*) ;






 int ixgbe_ping_all_vfs (struct ixgbe_adapter*) ;
 int ixgbe_ptp_start_cyclecounter (struct ixgbe_adapter*) ;
 int ixgbe_update_default_up (struct ixgbe_adapter*) ;
 int jiffies ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_tx_wake_all_queues (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_watchdog_link_is_up(struct ixgbe_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct ixgbe_hw *hw = &adapter->hw;
 u32 link_speed = adapter->link_speed;
 const char *speed_str;
 bool flow_rx, flow_tx;


 if (netif_carrier_ok(netdev))
  return;

 adapter->flags2 &= ~IXGBE_FLAG2_SEARCH_FOR_SFP;

 switch (hw->mac.type) {
 case 133: {
  u32 frctl = IXGBE_READ_REG(hw, IXGBE_FCTRL);
  u32 rmcs = IXGBE_READ_REG(hw, IXGBE_RMCS);
  flow_rx = !!(frctl & IXGBE_FCTRL_RFCE);
  flow_tx = !!(rmcs & IXGBE_RMCS_TFCE_802_3X);
 }
  break;
 case 131:
 case 130:
 case 129:
 case 128:
 case 132: {
  u32 mflcn = IXGBE_READ_REG(hw, IXGBE_MFLCN);
  u32 fccfg = IXGBE_READ_REG(hw, IXGBE_FCCFG);
  flow_rx = !!(mflcn & IXGBE_MFLCN_RFCE);
  flow_tx = !!(fccfg & IXGBE_FCCFG_TFCE_802_3X);
 }
  break;
 default:
  flow_tx = 0;
  flow_rx = 0;
  break;
 }

 adapter->last_rx_ptp_check = jiffies;

 if (test_bit(__IXGBE_PTP_RUNNING, &adapter->state))
  ixgbe_ptp_start_cyclecounter(adapter);

 switch (link_speed) {
 case 138:
  speed_str = "10 Gbps";
  break;
 case 134:
  speed_str = "5 Gbps";
  break;
 case 135:
  speed_str = "2.5 Gbps";
  break;
 case 136:
  speed_str = "1 Gbps";
  break;
 case 139:
  speed_str = "100 Mbps";
  break;
 case 137:
  speed_str = "10 Mbps";
  break;
 default:
  speed_str = "unknown speed";
  break;
 }
 e_info(drv, "NIC Link is Up %s, Flow Control: %s\n", speed_str,
        ((flow_rx && flow_tx) ? "RX/TX" :
        (flow_rx ? "RX" :
        (flow_tx ? "TX" : "None"))));

 netif_carrier_on(netdev);
 ixgbe_check_vf_rate_limit(adapter);


 netif_tx_wake_all_queues(adapter->netdev);


 ixgbe_update_default_up(adapter);


 ixgbe_ping_all_vfs(adapter);
}
