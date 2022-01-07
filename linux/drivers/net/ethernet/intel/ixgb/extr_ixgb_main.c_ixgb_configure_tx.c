
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ixgb_tx_desc {int dummy; } ;
struct ixgb_hw {int dummy; } ;
struct TYPE_2__ {int dma; int count; } ;
struct ixgb_adapter {int tx_int_delay; int tx_cmd_type; scalar_t__ tx_int_delay_enable; struct ixgb_hw hw; TYPE_1__ tx_ring; } ;


 int IXGB_TCTL_TCE ;
 int IXGB_TCTL_TPDE ;
 int IXGB_TCTL_TXEN ;
 int IXGB_TX_DESC_CMD_IDE ;
 int IXGB_TX_DESC_TYPE ;
 int IXGB_WRITE_REG (struct ixgb_hw*,int ,int) ;
 int TCTL ;
 int TDBAH ;
 int TDBAL ;
 int TDH ;
 int TDLEN ;
 int TDT ;
 int TIDV ;

__attribute__((used)) static void
ixgb_configure_tx(struct ixgb_adapter *adapter)
{
 u64 tdba = adapter->tx_ring.dma;
 u32 tdlen = adapter->tx_ring.count * sizeof(struct ixgb_tx_desc);
 u32 tctl;
 struct ixgb_hw *hw = &adapter->hw;





 IXGB_WRITE_REG(hw, TDBAL, (tdba & 0x00000000ffffffffULL));
 IXGB_WRITE_REG(hw, TDBAH, (tdba >> 32));

 IXGB_WRITE_REG(hw, TDLEN, tdlen);



 IXGB_WRITE_REG(hw, TDH, 0);
 IXGB_WRITE_REG(hw, TDT, 0);





 IXGB_WRITE_REG(hw, TIDV, adapter->tx_int_delay);



 tctl = IXGB_TCTL_TCE | IXGB_TCTL_TXEN | IXGB_TCTL_TPDE;
 IXGB_WRITE_REG(hw, TCTL, tctl);


 adapter->tx_cmd_type =
  IXGB_TX_DESC_TYPE |
  (adapter->tx_int_delay_enable ? IXGB_TX_DESC_CMD_IDE : 0);
}
