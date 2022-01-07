
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int lan_id; } ;
struct TYPE_4__ {int set_lben; } ;
struct ixgbe_hw {TYPE_3__ bus; TYPE_1__ mac; } ;
struct TYPE_5__ {int checksum; int buf_len; int cmd; } ;
struct ixgbe_hic_disable_rxen {int port_number; TYPE_2__ hdr; } ;
typedef scalar_t__ s32 ;


 int FW_DEFAULT_CHECKSUM ;
 int FW_DISABLE_RXEN_CMD ;
 int FW_DISABLE_RXEN_LEN ;
 int IXGBE_HI_COMMAND_TIMEOUT ;
 int IXGBE_PFDTXGSWC ;
 int IXGBE_PFDTXGSWC_VT_LBEN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXCTRL ;
 int IXGBE_RXCTRL_RXEN ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 scalar_t__ ixgbe_host_interface_command (struct ixgbe_hw*,struct ixgbe_hic_disable_rxen*,int,int ,int) ;

__attribute__((used)) static void ixgbe_disable_rx_x550(struct ixgbe_hw *hw)
{
 u32 rxctrl, pfdtxgswc;
 s32 status;
 struct ixgbe_hic_disable_rxen fw_cmd;

 rxctrl = IXGBE_READ_REG(hw, IXGBE_RXCTRL);
 if (rxctrl & IXGBE_RXCTRL_RXEN) {
  pfdtxgswc = IXGBE_READ_REG(hw, IXGBE_PFDTXGSWC);
  if (pfdtxgswc & IXGBE_PFDTXGSWC_VT_LBEN) {
   pfdtxgswc &= ~IXGBE_PFDTXGSWC_VT_LBEN;
   IXGBE_WRITE_REG(hw, IXGBE_PFDTXGSWC, pfdtxgswc);
   hw->mac.set_lben = 1;
  } else {
   hw->mac.set_lben = 0;
  }

  fw_cmd.hdr.cmd = FW_DISABLE_RXEN_CMD;
  fw_cmd.hdr.buf_len = FW_DISABLE_RXEN_LEN;
  fw_cmd.hdr.checksum = FW_DEFAULT_CHECKSUM;
  fw_cmd.port_number = hw->bus.lan_id;

  status = ixgbe_host_interface_command(hw, &fw_cmd,
     sizeof(struct ixgbe_hic_disable_rxen),
     IXGBE_HI_COMMAND_TIMEOUT, 1);


  if (status) {
   rxctrl = IXGBE_READ_REG(hw, IXGBE_RXCTRL);
   if (rxctrl & IXGBE_RXCTRL_RXEN) {
    rxctrl &= ~IXGBE_RXCTRL_RXEN;
    IXGBE_WRITE_REG(hw, IXGBE_RXCTRL, rxctrl);
   }
  }
 }
}
