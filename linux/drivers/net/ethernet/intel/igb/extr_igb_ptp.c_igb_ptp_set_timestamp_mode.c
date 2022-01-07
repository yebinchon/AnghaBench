
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {struct e1000_hw hw; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;


 int E1000_ETQF (int ) ;
 int E1000_ETQF_1588 ;
 int E1000_ETQF_FILTER_ENABLE ;
 int E1000_FTQF (int) ;
 int E1000_FTQF_1588_TIME_STAMP ;
 int E1000_FTQF_MASK ;
 int E1000_FTQF_MASK_PROTO_BP ;
 int E1000_FTQF_MASK_SOURCE_PORT_BP ;
 int E1000_FTQF_VF_BP ;
 int E1000_IMIR (int) ;
 int E1000_IMIREXT (int) ;
 int E1000_IMIREXT_CTRL_BP ;
 int E1000_IMIREXT_SIZE_BP ;
 int E1000_RXPBS ;
 int E1000_RXPBS_CFG_TS_EN ;
 int E1000_RXSTMPH ;
 int E1000_RXSTMPL ;
 int E1000_SPQF (int) ;
 int E1000_TSYNCRXCFG ;
 int E1000_TSYNCRXCFG_PTP_V1_DELAY_REQ_MESSAGE ;
 int E1000_TSYNCRXCFG_PTP_V1_SYNC_MESSAGE ;
 int E1000_TSYNCRXCTL ;
 int E1000_TSYNCRXCTL_ENABLED ;
 int E1000_TSYNCRXCTL_TYPE_ALL ;
 int E1000_TSYNCRXCTL_TYPE_EVENT_V2 ;
 int E1000_TSYNCRXCTL_TYPE_L4_V1 ;
 int E1000_TSYNCRXCTL_TYPE_MASK ;
 int E1000_TSYNCTXCTL ;
 int E1000_TSYNCTXCTL_ENABLED ;
 int E1000_TXSTMPH ;
 int E1000_TXSTMPL ;
 int EINVAL ;
 int ERANGE ;
 int ETH_P_1588 ;
 int IGB_ETQF_FILTER_1588 ;
 int IPPROTO_UDP ;
 int PTP_EV_PORT ;
 scalar_t__ e1000_82575 ;
 scalar_t__ e1000_82576 ;
 scalar_t__ e1000_82580 ;
 scalar_t__ e1000_i210 ;
 scalar_t__ e1000_i211 ;
 int htons (int ) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;
 int wrfl () ;

__attribute__((used)) static int igb_ptp_set_timestamp_mode(struct igb_adapter *adapter,
          struct hwtstamp_config *config)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 tsync_tx_ctl = E1000_TSYNCTXCTL_ENABLED;
 u32 tsync_rx_ctl = E1000_TSYNCRXCTL_ENABLED;
 u32 tsync_rx_cfg = 0;
 bool is_l4 = 0;
 bool is_l2 = 0;
 u32 regval;


 if (config->flags)
  return -EINVAL;

 switch (config->tx_type) {
 case 129:
  tsync_tx_ctl = 0;
 case 128:
  break;
 default:
  return -ERANGE;
 }

 switch (config->rx_filter) {
 case 143:
  tsync_rx_ctl = 0;
  break;
 case 139:
  tsync_rx_ctl |= E1000_TSYNCRXCTL_TYPE_L4_V1;
  tsync_rx_cfg = E1000_TSYNCRXCFG_PTP_V1_SYNC_MESSAGE;
  is_l4 = 1;
  break;
 case 141:
  tsync_rx_ctl |= E1000_TSYNCRXCTL_TYPE_L4_V1;
  tsync_rx_cfg = E1000_TSYNCRXCFG_PTP_V1_DELAY_REQ_MESSAGE;
  is_l4 = 1;
  break;
 case 137:
 case 135:
 case 132:
 case 130:
 case 134:
 case 131:
 case 138:
 case 136:
 case 133:
  tsync_rx_ctl |= E1000_TSYNCRXCTL_TYPE_EVENT_V2;
  config->rx_filter = 137;
  is_l2 = 1;
  is_l4 = 1;
  break;
 case 140:
 case 142:
 case 144:



  if (hw->mac.type != e1000_82576) {
   tsync_rx_ctl |= E1000_TSYNCRXCTL_TYPE_ALL;
   config->rx_filter = 144;
   break;
  }

 default:
  config->rx_filter = 143;
  return -ERANGE;
 }

 if (hw->mac.type == e1000_82575) {
  if (tsync_rx_ctl | tsync_tx_ctl)
   return -EINVAL;
  return 0;
 }





 if ((hw->mac.type >= e1000_82580) && tsync_rx_ctl) {
  tsync_rx_ctl = E1000_TSYNCRXCTL_ENABLED;
  tsync_rx_ctl |= E1000_TSYNCRXCTL_TYPE_ALL;
  config->rx_filter = 144;
  is_l2 = 1;
  is_l4 = 1;

  if ((hw->mac.type == e1000_i210) ||
      (hw->mac.type == e1000_i211)) {
   regval = rd32(E1000_RXPBS);
   regval |= E1000_RXPBS_CFG_TS_EN;
   wr32(E1000_RXPBS, regval);
  }
 }


 regval = rd32(E1000_TSYNCTXCTL);
 regval &= ~E1000_TSYNCTXCTL_ENABLED;
 regval |= tsync_tx_ctl;
 wr32(E1000_TSYNCTXCTL, regval);


 regval = rd32(E1000_TSYNCRXCTL);
 regval &= ~(E1000_TSYNCRXCTL_ENABLED | E1000_TSYNCRXCTL_TYPE_MASK);
 regval |= tsync_rx_ctl;
 wr32(E1000_TSYNCRXCTL, regval);


 wr32(E1000_TSYNCRXCFG, tsync_rx_cfg);


 if (is_l2)
  wr32(E1000_ETQF(IGB_ETQF_FILTER_1588),
       (E1000_ETQF_FILTER_ENABLE |
        E1000_ETQF_1588 |
        ETH_P_1588));
 else
  wr32(E1000_ETQF(IGB_ETQF_FILTER_1588), 0);


 if (is_l4) {
  u32 ftqf = (IPPROTO_UDP
   | E1000_FTQF_VF_BP
   | E1000_FTQF_1588_TIME_STAMP
   | E1000_FTQF_MASK);
  ftqf &= ~E1000_FTQF_MASK_PROTO_BP;

  wr32(E1000_IMIR(3), htons(PTP_EV_PORT));
  wr32(E1000_IMIREXT(3),
       (E1000_IMIREXT_SIZE_BP | E1000_IMIREXT_CTRL_BP));
  if (hw->mac.type == e1000_82576) {

   wr32(E1000_SPQF(3), htons(PTP_EV_PORT));
   ftqf &= ~E1000_FTQF_MASK_SOURCE_PORT_BP;
  }
  wr32(E1000_FTQF(3), ftqf);
 } else {
  wr32(E1000_FTQF(3), E1000_FTQF_MASK);
 }
 wrfl();


 regval = rd32(E1000_TXSTMPL);
 regval = rd32(E1000_TXSTMPH);
 regval = rd32(E1000_RXSTMPL);
 regval = rd32(E1000_RXSTMPH);

 return 0;
}
