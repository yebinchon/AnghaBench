
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct e1000_rx_ring {int dummy; } ;
struct e1000_hw {int pci_cmd_word; } ;
struct e1000_adapter {int (* alloc_rx_buf ) (struct e1000_adapter*,struct e1000_rx_ring*,int ) ;struct e1000_rx_ring* rx_ring; struct net_device* netdev; struct e1000_hw hw; } ;


 int E1000_DESC_UNUSED (struct e1000_rx_ring*) ;
 int E1000_RCTL_RST ;
 int E1000_WRITE_FLUSH () ;
 int PCI_COMMAND_INVALIDATE ;
 int RCTL ;
 int e1000_configure_rx (struct e1000_adapter*) ;
 int e1000_pci_set_mwi (struct e1000_hw*) ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;
 int mdelay (int) ;
 scalar_t__ netif_running (struct net_device*) ;
 int stub1 (struct e1000_adapter*,struct e1000_rx_ring*,int ) ;

__attribute__((used)) static void e1000_leave_82542_rst(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;
 u32 rctl;

 rctl = er32(RCTL);
 rctl &= ~E1000_RCTL_RST;
 ew32(RCTL, rctl);
 E1000_WRITE_FLUSH();
 mdelay(5);

 if (hw->pci_cmd_word & PCI_COMMAND_INVALIDATE)
  e1000_pci_set_mwi(hw);

 if (netif_running(netdev)) {

  struct e1000_rx_ring *ring = &adapter->rx_ring[0];
  e1000_configure_rx(adapter);
  adapter->alloc_rx_buf(adapter, ring, E1000_DESC_UNUSED(ring));
 }
}
