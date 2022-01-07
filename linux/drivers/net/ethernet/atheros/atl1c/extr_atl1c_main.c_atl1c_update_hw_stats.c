
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {unsigned long rx_ok; unsigned long tx_ok; } ;
struct atl1c_adapter {int hw; TYPE_1__ hw_stats; } ;


 int AT_READ_REG (int *,scalar_t__,scalar_t__*) ;
 scalar_t__ REG_MAC_RX_STATUS_BIN ;
 scalar_t__ REG_MAC_RX_STATUS_END ;
 scalar_t__ REG_MAC_TX_STATUS_BIN ;
 scalar_t__ REG_MAC_TX_STATUS_END ;

__attribute__((used)) static void atl1c_update_hw_stats(struct atl1c_adapter *adapter)
{
 u16 hw_reg_addr = 0;
 unsigned long *stats_item = ((void*)0);
 u32 data;


 hw_reg_addr = REG_MAC_RX_STATUS_BIN;
 stats_item = &adapter->hw_stats.rx_ok;
 while (hw_reg_addr <= REG_MAC_RX_STATUS_END) {
  AT_READ_REG(&adapter->hw, hw_reg_addr, &data);
  *stats_item += data;
  stats_item++;
  hw_reg_addr += 4;
 }

 hw_reg_addr = REG_MAC_TX_STATUS_BIN;
 stats_item = &adapter->hw_stats.tx_ok;
 while (hw_reg_addr <= REG_MAC_TX_STATUS_END) {
  AT_READ_REG(&adapter->hw, hw_reg_addr, &data);
  *stats_item += data;
  stats_item++;
  hw_reg_addr += 4;
 }
}
