
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int num_tx_queues; struct e1000_hw hw; struct net_device* netdev; } ;


 int E1000_I210_DTXMXPKTSZ ;
 int E1000_I210_TQAVCTRL ;
 int E1000_RXPBS ;
 int E1000_TQAVCTRL_DATAFETCHARB ;
 int E1000_TQAVCTRL_SP_WAIT_SR ;
 int E1000_TQAVCTRL_XMIT_MODE ;
 int E1000_TXPBS ;
 int I210_DTXMXPKTSZ_DEFAULT ;
 int I210_RXPBSIZE_DEFAULT ;
 int I210_RXPBSIZE_MASK ;
 int I210_RXPBSIZE_PB_30KB ;
 int I210_SR_QUEUES_NUM ;
 int I210_TXPBSIZE_DEFAULT ;
 int I210_TXPBSIZE_MASK ;
 int I210_TXPBSIZE_PB0_8KB ;
 int I210_TXPBSIZE_PB1_8KB ;
 int I210_TXPBSIZE_PB2_4KB ;
 int I210_TXPBSIZE_PB3_4KB ;
 scalar_t__ e1000_i210 ;
 int igb_config_tx_modes (struct igb_adapter*,int) ;
 scalar_t__ is_fqtss_enabled (struct igb_adapter*) ;
 int netdev_dbg (struct net_device*,char*,char*) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igb_setup_tx_mode(struct igb_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct e1000_hw *hw = &adapter->hw;
 u32 val;


 if (hw->mac.type != e1000_i210)
  return;

 if (is_fqtss_enabled(adapter)) {
  int i, max_queue;





  val = rd32(E1000_I210_TQAVCTRL);
  val |= E1000_TQAVCTRL_XMIT_MODE | E1000_TQAVCTRL_SP_WAIT_SR;
  val &= ~E1000_TQAVCTRL_DATAFETCHARB;
  wr32(E1000_I210_TQAVCTRL, val);




  val = rd32(E1000_TXPBS);
  val &= ~I210_TXPBSIZE_MASK;
  val |= I210_TXPBSIZE_PB0_8KB | I210_TXPBSIZE_PB1_8KB |
   I210_TXPBSIZE_PB2_4KB | I210_TXPBSIZE_PB3_4KB;
  wr32(E1000_TXPBS, val);

  val = rd32(E1000_RXPBS);
  val &= ~I210_RXPBSIZE_MASK;
  val |= I210_RXPBSIZE_PB_30KB;
  wr32(E1000_RXPBS, val);
  val = (4096 - 1) / 64;
  wr32(E1000_I210_DTXMXPKTSZ, val);






  max_queue = (adapter->num_tx_queues < I210_SR_QUEUES_NUM) ?
       adapter->num_tx_queues : I210_SR_QUEUES_NUM;

  for (i = 0; i < max_queue; i++) {
   igb_config_tx_modes(adapter, i);
  }
 } else {
  wr32(E1000_RXPBS, I210_RXPBSIZE_DEFAULT);
  wr32(E1000_TXPBS, I210_TXPBSIZE_DEFAULT);
  wr32(E1000_I210_DTXMXPKTSZ, I210_DTXMXPKTSZ_DEFAULT);

  val = rd32(E1000_I210_TQAVCTRL);




  val &= ~E1000_TQAVCTRL_XMIT_MODE;
  wr32(E1000_I210_TQAVCTRL, val);
 }

 netdev_dbg(netdev, "FQTSS %s\n", (is_fqtss_enabled(adapter)) ?
     "enabled" : "disabled");
}
