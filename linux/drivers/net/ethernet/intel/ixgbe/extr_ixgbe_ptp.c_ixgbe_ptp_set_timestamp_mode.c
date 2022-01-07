
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags; struct ixgbe_hw hw; } ;
struct hwtstamp_config {int tx_type; int rx_filter; scalar_t__ flags; } ;


 int EINVAL ;
 int ERANGE ;
 int ETH_P_1588 ;
 int IXGBE_ETQF (int ) ;
 int IXGBE_ETQF_1588 ;
 int IXGBE_ETQF_FILTER_1588 ;
 int IXGBE_ETQF_FILTER_EN ;
 int IXGBE_FLAG_RX_HWTSTAMP_ENABLED ;
 int IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXMTRL ;
 int IXGBE_RXMTRL_V1_DELAY_REQ_MSG ;
 int IXGBE_RXMTRL_V1_SYNC_MSG ;
 int IXGBE_RXSTMPH ;
 int IXGBE_TSYNCRXCTL ;
 int IXGBE_TSYNCRXCTL_ENABLED ;
 int IXGBE_TSYNCRXCTL_TSIP_UT_EN ;
 int IXGBE_TSYNCRXCTL_TYPE_ALL ;
 int IXGBE_TSYNCRXCTL_TYPE_EVENT_V2 ;
 int IXGBE_TSYNCRXCTL_TYPE_L4_V1 ;
 int IXGBE_TSYNCRXCTL_TYPE_MASK ;
 int IXGBE_TSYNCTXCTL ;
 int IXGBE_TSYNCTXCTL_ENABLED ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int PTP_EV_PORT ;
 int ixgbe_mac_82598EB ;



 int ixgbe_ptp_clear_tx_timestamp (struct ixgbe_adapter*) ;

__attribute__((used)) static int ixgbe_ptp_set_timestamp_mode(struct ixgbe_adapter *adapter,
     struct hwtstamp_config *config)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 tsync_tx_ctl = IXGBE_TSYNCTXCTL_ENABLED;
 u32 tsync_rx_ctl = IXGBE_TSYNCRXCTL_ENABLED;
 u32 tsync_rx_mtrl = PTP_EV_PORT << 16;
 bool is_l2 = 0;
 u32 regval;


 if (config->flags)
  return -EINVAL;

 switch (config->tx_type) {
 case 132:
  tsync_tx_ctl = 0;
 case 131:
  break;
 default:
  return -ERANGE;
 }

 switch (config->rx_filter) {
 case 146:
  tsync_rx_ctl = 0;
  tsync_rx_mtrl = 0;
  adapter->flags &= ~(IXGBE_FLAG_RX_HWTSTAMP_ENABLED |
        IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER);
  break;
 case 142:
  tsync_rx_ctl |= IXGBE_TSYNCRXCTL_TYPE_L4_V1;
  tsync_rx_mtrl |= IXGBE_RXMTRL_V1_SYNC_MSG;
  adapter->flags |= (IXGBE_FLAG_RX_HWTSTAMP_ENABLED |
       IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER);
  break;
 case 144:
  tsync_rx_ctl |= IXGBE_TSYNCRXCTL_TYPE_L4_V1;
  tsync_rx_mtrl |= IXGBE_RXMTRL_V1_DELAY_REQ_MSG;
  adapter->flags |= (IXGBE_FLAG_RX_HWTSTAMP_ENABLED |
       IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER);
  break;
 case 140:
 case 138:
 case 135:
 case 133:
 case 137:
 case 134:
 case 141:
 case 139:
 case 136:
  tsync_rx_ctl |= IXGBE_TSYNCRXCTL_TYPE_EVENT_V2;
  is_l2 = 1;
  config->rx_filter = 140;
  adapter->flags |= (IXGBE_FLAG_RX_HWTSTAMP_ENABLED |
       IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER);
  break;
 case 143:
 case 145:
 case 147:



  if (hw->mac.type >= 130) {
   tsync_rx_ctl |= IXGBE_TSYNCRXCTL_TYPE_ALL;
   config->rx_filter = 147;
   adapter->flags |= IXGBE_FLAG_RX_HWTSTAMP_ENABLED;
   break;
  }

 default:






  adapter->flags &= ~(IXGBE_FLAG_RX_HWTSTAMP_ENABLED |
        IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER);
  config->rx_filter = 146;
  return -ERANGE;
 }

 if (hw->mac.type == ixgbe_mac_82598EB) {
  adapter->flags &= ~(IXGBE_FLAG_RX_HWTSTAMP_ENABLED |
        IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER);
  if (tsync_rx_ctl | tsync_tx_ctl)
   return -ERANGE;
  return 0;
 }





 switch (hw->mac.type) {
 case 130:
 case 129:
 case 128:




  if (config->rx_filter == 146)
   break;

  tsync_rx_ctl = IXGBE_TSYNCRXCTL_ENABLED |
          IXGBE_TSYNCRXCTL_TYPE_ALL |
          IXGBE_TSYNCRXCTL_TSIP_UT_EN;
  config->rx_filter = 147;
  adapter->flags |= IXGBE_FLAG_RX_HWTSTAMP_ENABLED;
  adapter->flags &= ~IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER;
  is_l2 = 1;
  break;
 default:
  break;
 }


 if (is_l2)
  IXGBE_WRITE_REG(hw, IXGBE_ETQF(IXGBE_ETQF_FILTER_1588),
    (IXGBE_ETQF_FILTER_EN |
     IXGBE_ETQF_1588 |
     ETH_P_1588));
 else
  IXGBE_WRITE_REG(hw, IXGBE_ETQF(IXGBE_ETQF_FILTER_1588), 0);


 regval = IXGBE_READ_REG(hw, IXGBE_TSYNCTXCTL);
 regval &= ~IXGBE_TSYNCTXCTL_ENABLED;
 regval |= tsync_tx_ctl;
 IXGBE_WRITE_REG(hw, IXGBE_TSYNCTXCTL, regval);


 regval = IXGBE_READ_REG(hw, IXGBE_TSYNCRXCTL);
 regval &= ~(IXGBE_TSYNCRXCTL_ENABLED | IXGBE_TSYNCRXCTL_TYPE_MASK);
 regval |= tsync_rx_ctl;
 IXGBE_WRITE_REG(hw, IXGBE_TSYNCRXCTL, regval);


 IXGBE_WRITE_REG(hw, IXGBE_RXMTRL, tsync_rx_mtrl);

 IXGBE_WRITE_FLUSH(hw);


 ixgbe_ptp_clear_tx_timestamp(adapter);
 IXGBE_READ_REG(hw, IXGBE_RXSTMPH);

 return 0;
}
