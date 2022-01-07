
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_hw {int dummy; } ;
struct pch_gbe_adapter {int tx_ring; int rx_ring; int wake_up_evt; struct pch_gbe_hw hw; } ;
struct net_device {int dummy; } ;


 int netdev_dbg (struct net_device*,char*) ;
 int netdev_err (struct net_device*,char*) ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;
 int pch_gbe_free_rx_resources (struct pch_gbe_adapter*,int ) ;
 int pch_gbe_free_tx_resources (struct pch_gbe_adapter*,int ) ;
 int pch_gbe_phy_power_down (struct pch_gbe_hw*) ;
 int pch_gbe_phy_power_up (struct pch_gbe_hw*) ;
 int pch_gbe_reset (struct pch_gbe_adapter*) ;
 int pch_gbe_setup_rx_resources (struct pch_gbe_adapter*,int ) ;
 int pch_gbe_setup_tx_resources (struct pch_gbe_adapter*,int ) ;
 int pch_gbe_up (struct pch_gbe_adapter*) ;

__attribute__((used)) static int pch_gbe_open(struct net_device *netdev)
{
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);
 struct pch_gbe_hw *hw = &adapter->hw;
 int err;


 err = pch_gbe_setup_tx_resources(adapter, adapter->tx_ring);
 if (err)
  goto err_setup_tx;

 err = pch_gbe_setup_rx_resources(adapter, adapter->rx_ring);
 if (err)
  goto err_setup_rx;
 pch_gbe_phy_power_up(hw);
 err = pch_gbe_up(adapter);
 if (err)
  goto err_up;
 netdev_dbg(netdev, "Success End\n");
 return 0;

err_up:
 if (!adapter->wake_up_evt)
  pch_gbe_phy_power_down(hw);
 pch_gbe_free_rx_resources(adapter, adapter->rx_ring);
err_setup_rx:
 pch_gbe_free_tx_resources(adapter, adapter->tx_ring);
err_setup_tx:
 pch_gbe_reset(adapter);
 netdev_err(netdev, "Error End\n");
 return err;
}
