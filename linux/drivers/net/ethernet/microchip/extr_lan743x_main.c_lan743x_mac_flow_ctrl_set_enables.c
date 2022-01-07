
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_adapter {int dummy; } ;


 int MAC_FLOW ;
 int MAC_FLOW_CR_FCPT_MASK_ ;
 int MAC_FLOW_CR_RX_FCEN_ ;
 int MAC_FLOW_CR_TX_FCEN_ ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int ) ;

__attribute__((used)) static void lan743x_mac_flow_ctrl_set_enables(struct lan743x_adapter *adapter,
           bool tx_enable, bool rx_enable)
{
 u32 flow_setting = 0;




 flow_setting = MAC_FLOW_CR_FCPT_MASK_;
 if (tx_enable)
  flow_setting |= MAC_FLOW_CR_TX_FCEN_;
 if (rx_enable)
  flow_setting |= MAC_FLOW_CR_RX_FCEN_;
 lan743x_csr_write(adapter, MAC_FLOW, flow_setting);
}
