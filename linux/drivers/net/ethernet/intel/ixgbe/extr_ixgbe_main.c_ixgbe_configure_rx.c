
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int (* enable_rx_dma ) (struct ixgbe_hw*,int) ;int (* disable_rx ) (struct ixgbe_hw*) ;} ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int flags2; int num_rx_queues; int * rx_ring; struct ixgbe_hw hw; } ;


 int IXGBE_FLAG2_RSC_ENABLED ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RFCTL ;
 int IXGBE_RFCTL_NFSR_DIS ;
 int IXGBE_RFCTL_NFSW_DIS ;
 int IXGBE_RFCTL_RSC_DIS ;
 int IXGBE_RXCTRL ;
 int IXGBE_RXCTRL_DMBYPS ;
 int IXGBE_RXCTRL_RXEN ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int ixgbe_configure_rx_ring (struct ixgbe_adapter*,int ) ;
 scalar_t__ ixgbe_mac_82598EB ;
 int ixgbe_set_rx_buffer_len (struct ixgbe_adapter*) ;
 int ixgbe_setup_mrqc (struct ixgbe_adapter*) ;
 int ixgbe_setup_psrtype (struct ixgbe_adapter*) ;
 int ixgbe_setup_rdrxctl (struct ixgbe_adapter*) ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*,int) ;

__attribute__((used)) static void ixgbe_configure_rx(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int i;
 u32 rxctrl, rfctl;


 hw->mac.ops.disable_rx(hw);

 ixgbe_setup_psrtype(adapter);
 ixgbe_setup_rdrxctl(adapter);


 rfctl = IXGBE_READ_REG(hw, IXGBE_RFCTL);
 rfctl &= ~IXGBE_RFCTL_RSC_DIS;
 if (!(adapter->flags2 & IXGBE_FLAG2_RSC_ENABLED))
  rfctl |= IXGBE_RFCTL_RSC_DIS;


 rfctl |= (IXGBE_RFCTL_NFSW_DIS | IXGBE_RFCTL_NFSR_DIS);
 IXGBE_WRITE_REG(hw, IXGBE_RFCTL, rfctl);


 ixgbe_setup_mrqc(adapter);


 ixgbe_set_rx_buffer_len(adapter);





 for (i = 0; i < adapter->num_rx_queues; i++)
  ixgbe_configure_rx_ring(adapter, adapter->rx_ring[i]);

 rxctrl = IXGBE_READ_REG(hw, IXGBE_RXCTRL);

 if (hw->mac.type == ixgbe_mac_82598EB)
  rxctrl |= IXGBE_RXCTRL_DMBYPS;


 rxctrl |= IXGBE_RXCTRL_RXEN;
 hw->mac.ops.enable_rx_dma(hw, rxctrl);
}
