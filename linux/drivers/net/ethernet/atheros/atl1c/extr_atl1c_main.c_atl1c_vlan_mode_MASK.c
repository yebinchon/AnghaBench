#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct atl1c_adapter {int /*<<< orphan*/  hw; struct pci_dev* pdev; } ;
typedef  int /*<<< orphan*/  netdev_features_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_MAC_CTRL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct atl1c_adapter* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct atl1c_adapter*) ; 

__attribute__((used)) static void FUNC8(struct net_device *netdev,
	netdev_features_t features)
{
	struct atl1c_adapter *adapter = FUNC6(netdev);
	struct pci_dev *pdev = adapter->pdev;
	u32 mac_ctrl_data = 0;

	if (FUNC7(adapter))
		FUNC5(&pdev->dev, "atl1c_vlan_mode\n");

	FUNC3(adapter);
	FUNC0(&adapter->hw, REG_MAC_CTRL, &mac_ctrl_data);
	FUNC2(features, &mac_ctrl_data);
	FUNC1(&adapter->hw, REG_MAC_CTRL, mac_ctrl_data);
	FUNC4(adapter);
}