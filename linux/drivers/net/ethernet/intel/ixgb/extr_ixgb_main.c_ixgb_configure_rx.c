
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ixgb_rx_desc {int dummy; } ;
struct ixgb_hw {int dummy; } ;
struct TYPE_2__ {int dma; int count; } ;
struct ixgb_adapter {int rx_int_delay; scalar_t__ rx_csum; struct ixgb_hw hw; TYPE_1__ rx_ring; } ;


 int IXGB_RCTL_RXEN ;
 int IXGB_READ_REG (struct ixgb_hw*,int ) ;
 int IXGB_RXCSUM_TUOFL ;
 int IXGB_WRITE_REG (struct ixgb_hw*,int ,int) ;
 int RCTL ;
 int RDBAH ;
 int RDBAL ;
 int RDH ;
 int RDLEN ;
 int RDT ;
 int RDTR ;
 int RXCSUM ;
 int RXDCTL ;

__attribute__((used)) static void
ixgb_configure_rx(struct ixgb_adapter *adapter)
{
 u64 rdba = adapter->rx_ring.dma;
 u32 rdlen = adapter->rx_ring.count * sizeof(struct ixgb_rx_desc);
 struct ixgb_hw *hw = &adapter->hw;
 u32 rctl;
 u32 rxcsum;



 rctl = IXGB_READ_REG(hw, RCTL);
 IXGB_WRITE_REG(hw, RCTL, rctl & ~IXGB_RCTL_RXEN);



 IXGB_WRITE_REG(hw, RDTR, adapter->rx_int_delay);



 IXGB_WRITE_REG(hw, RDBAL, (rdba & 0x00000000ffffffffULL));
 IXGB_WRITE_REG(hw, RDBAH, (rdba >> 32));

 IXGB_WRITE_REG(hw, RDLEN, rdlen);


 IXGB_WRITE_REG(hw, RDH, 0);
 IXGB_WRITE_REG(hw, RDT, 0);






 IXGB_WRITE_REG(hw, RXDCTL, 0);


 if (adapter->rx_csum) {
  rxcsum = IXGB_READ_REG(hw, RXCSUM);
  rxcsum |= IXGB_RXCSUM_TUOFL;
  IXGB_WRITE_REG(hw, RXCSUM, rxcsum);
 }



 IXGB_WRITE_REG(hw, RCTL, rctl);
}
