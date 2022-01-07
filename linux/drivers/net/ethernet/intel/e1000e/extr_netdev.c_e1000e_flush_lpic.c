
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct TYPE_5__ {int (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct e1000_hw {TYPE_3__ phy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int E1000_LPIC_LPIET_SHIFT ;
 int LPIC ;
 int er32 (int ) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int pr_info (char*,int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

__attribute__((used)) static void e1000e_flush_lpic(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 ret_val;

 pm_runtime_get_sync(netdev->dev.parent);

 ret_val = hw->phy.ops.acquire(hw);
 if (ret_val)
  goto fl_out;

 pr_info("EEE TX LPI TIMER: %08X\n",
  er32(LPIC) >> E1000_LPIC_LPIET_SHIFT);

 hw->phy.ops.release(hw);

fl_out:
 pm_runtime_put_sync(netdev->dev.parent);
}
