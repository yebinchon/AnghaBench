
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags; struct hwtstamp_config hwtstamp_config; struct e1000_hw hw; } ;


 int E1000_RXMTRL_PTP_V1_DELAY_REQ_MESSAGE ;
 int E1000_RXMTRL_PTP_V1_SYNC_MESSAGE ;
 int E1000_RXMTRL_PTP_V2_DELAY_REQ_MESSAGE ;
 int E1000_RXMTRL_PTP_V2_SYNC_MESSAGE ;
 int E1000_TSYNCRXCTL_ENABLED ;
 int E1000_TSYNCRXCTL_TYPE_ALL ;
 int E1000_TSYNCRXCTL_TYPE_EVENT_V2 ;
 int E1000_TSYNCRXCTL_TYPE_L2_L4_V2 ;
 int E1000_TSYNCRXCTL_TYPE_L2_V2 ;
 int E1000_TSYNCRXCTL_TYPE_L4_V1 ;
 int E1000_TSYNCRXCTL_TYPE_MASK ;
 int E1000_TSYNCTXCTL_ENABLED ;
 int EAGAIN ;
 int EINVAL ;
 int ERANGE ;
 int ETH_P_1588 ;
 int FLAG_HAS_HW_TIMESTAMP ;
 int PTP_EV_PORT ;
 int RXMTRL ;
 int RXSTMPH ;
 int RXUDP ;
 int TSYNCRXCTL ;
 int TSYNCTXCTL ;
 int TXSTMPH ;
 int cpu_to_be16s (int*) ;
 int e1e_flush () ;
 int e_err (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static int e1000e_config_hwtstamp(struct e1000_adapter *adapter,
      struct hwtstamp_config *config)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 tsync_tx_ctl = E1000_TSYNCTXCTL_ENABLED;
 u32 tsync_rx_ctl = E1000_TSYNCRXCTL_ENABLED;
 u32 rxmtrl = 0;
 u16 rxudp = 0;
 bool is_l4 = 0;
 bool is_l2 = 0;
 u32 regval;

 if (!(adapter->flags & FLAG_HAS_HW_TIMESTAMP))
  return -EINVAL;


 if (config->flags)
  return -EINVAL;

 switch (config->tx_type) {
 case 129:
  tsync_tx_ctl = 0;
  break;
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
  rxmtrl = E1000_RXMTRL_PTP_V1_SYNC_MESSAGE;
  is_l4 = 1;
  break;
 case 141:
  tsync_rx_ctl |= E1000_TSYNCRXCTL_TYPE_L4_V1;
  rxmtrl = E1000_RXMTRL_PTP_V1_DELAY_REQ_MESSAGE;
  is_l4 = 1;
  break;
 case 134:

  tsync_rx_ctl |= E1000_TSYNCRXCTL_TYPE_L2_V2;
  rxmtrl = E1000_RXMTRL_PTP_V2_SYNC_MESSAGE;
  is_l2 = 1;
  break;
 case 136:

  tsync_rx_ctl |= E1000_TSYNCRXCTL_TYPE_L2_V2;
  rxmtrl = E1000_RXMTRL_PTP_V2_DELAY_REQ_MESSAGE;
  is_l2 = 1;
  break;
 case 131:



 case 130:

  tsync_rx_ctl |= E1000_TSYNCRXCTL_TYPE_L2_L4_V2;
  rxmtrl = E1000_RXMTRL_PTP_V2_SYNC_MESSAGE;
  is_l2 = 1;
  is_l4 = 1;
  break;
 case 133:



 case 138:

  tsync_rx_ctl |= E1000_TSYNCRXCTL_TYPE_L2_L4_V2;
  rxmtrl = E1000_RXMTRL_PTP_V2_DELAY_REQ_MESSAGE;
  is_l2 = 1;
  is_l4 = 1;
  break;
 case 132:
 case 135:



 case 137:
  tsync_rx_ctl |= E1000_TSYNCRXCTL_TYPE_EVENT_V2;
  config->rx_filter = 137;
  is_l2 = 1;
  is_l4 = 1;
  break;
 case 140:




 case 142:
 case 144:
  is_l2 = 1;
  is_l4 = 1;
  tsync_rx_ctl |= E1000_TSYNCRXCTL_TYPE_ALL;
  config->rx_filter = 144;
  break;
 default:
  return -ERANGE;
 }

 adapter->hwtstamp_config = *config;


 regval = er32(TSYNCTXCTL);
 regval &= ~E1000_TSYNCTXCTL_ENABLED;
 regval |= tsync_tx_ctl;
 ew32(TSYNCTXCTL, regval);
 if ((er32(TSYNCTXCTL) & E1000_TSYNCTXCTL_ENABLED) !=
     (regval & E1000_TSYNCTXCTL_ENABLED)) {
  e_err("Timesync Tx Control register not set as expected\n");
  return -EAGAIN;
 }


 regval = er32(TSYNCRXCTL);
 regval &= ~(E1000_TSYNCRXCTL_ENABLED | E1000_TSYNCRXCTL_TYPE_MASK);
 regval |= tsync_rx_ctl;
 ew32(TSYNCRXCTL, regval);
 if ((er32(TSYNCRXCTL) & (E1000_TSYNCRXCTL_ENABLED |
     E1000_TSYNCRXCTL_TYPE_MASK)) !=
     (regval & (E1000_TSYNCRXCTL_ENABLED |
         E1000_TSYNCRXCTL_TYPE_MASK))) {
  e_err("Timesync Rx Control register not set as expected\n");
  return -EAGAIN;
 }


 if (is_l2)
  rxmtrl |= ETH_P_1588;


 ew32(RXMTRL, rxmtrl);


 if (is_l4) {
  rxudp = PTP_EV_PORT;
  cpu_to_be16s(&rxudp);
 }
 ew32(RXUDP, rxudp);

 e1e_flush();


 er32(RXSTMPH);
 er32(TXSTMPH);

 return 0;
}
