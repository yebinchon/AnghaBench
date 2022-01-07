
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct net_device* netdev; struct e1000_hw hw; } ;


 int E1000_RCTL_RST ;
 int E1000_WRITE_FLUSH () ;
 int RCTL ;
 int e1000_clean_all_rx_rings (struct e1000_adapter*) ;
 int e1000_pci_clear_mwi (struct e1000_hw*) ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;
 int mdelay (int) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static void e1000_enter_82542_rst(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct net_device *netdev = adapter->netdev;
 u32 rctl;

 e1000_pci_clear_mwi(hw);

 rctl = er32(RCTL);
 rctl |= E1000_RCTL_RST;
 ew32(RCTL, rctl);
 E1000_WRITE_FLUSH();
 mdelay(5);

 if (netif_running(netdev))
  e1000_clean_all_rx_rings(adapter);
}
