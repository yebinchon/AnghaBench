#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct device {int dummy; } ;
struct be_dma_mem {int size; int /*<<< orphan*/  dma; int /*<<< orphan*/  va; } ;
struct be_cmd_req_acpi_wol_magic_config {int dummy; } ;
struct be_adapter {int wol_cap; int wol_en; TYPE_2__* pdev; TYPE_1__* netdev; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int BE_WOL_CAP ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_D3cold ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int WAKE_MAGIC ; 
 int FUNC0 (struct be_adapter*,int /*<<< orphan*/ *,struct be_dma_mem*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct be_adapter* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
	struct be_adapter *adapter = FUNC8(netdev);
	struct device *dev = &adapter->pdev->dev;
	struct be_dma_mem cmd;
	u8 mac[ETH_ALEN];
	bool enable;
	int status;

	if (wol->wolopts & ~WAKE_MAGIC)
		return -EOPNOTSUPP;

	if (!(adapter->wol_cap & BE_WOL_CAP)) {
		FUNC3(&adapter->pdev->dev, "WOL not supported\n");
		return -EOPNOTSUPP;
	}

	cmd.size = sizeof(struct be_cmd_req_acpi_wol_magic_config);
	cmd.va = FUNC4(dev, cmd.size, &cmd.dma, GFP_KERNEL);
	if (!cmd.va)
		return -ENOMEM;

	FUNC6(mac);

	enable = wol->wolopts & WAKE_MAGIC;
	if (enable)
		FUNC7(mac, adapter->netdev->dev_addr);

	status = FUNC0(adapter, mac, &cmd);
	if (status) {
		FUNC2(dev, "Could not set Wake-on-lan mac address\n");
		status = FUNC1(status);
		goto err;
	}

	FUNC9(adapter->pdev, PCI_D3hot, enable);
	FUNC9(adapter->pdev, PCI_D3cold, enable);

	adapter->wol_en = enable ? true : false;

err:
	FUNC5(dev, cmd.size, cmd.va, cmd.dma);
	return status;
}