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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int features; int hw_features; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  max_mtu; } ;
struct lan743x_adapter {int msg_enable; struct net_device* netdev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  LAN743X_MAX_FRAME_SIZE ; 
 int NETIF_F_HW_CSUM ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int NETIF_MSG_DRV ; 
 int NETIF_MSG_IFDOWN ; 
 int NETIF_MSG_IFUP ; 
 int NETIF_MSG_LINK ; 
 int NETIF_MSG_PROBE ; 
 int NETIF_MSG_TX_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  lan743x_ethtool_ops ; 
 int /*<<< orphan*/  FUNC3 (struct lan743x_adapter*) ; 
 int FUNC4 (struct lan743x_adapter*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct lan743x_adapter*) ; 
 int FUNC6 (struct lan743x_adapter*) ; 
 int /*<<< orphan*/  lan743x_netdev_ops ; 
 int /*<<< orphan*/  FUNC7 (struct lan743x_adapter*) ; 
 int FUNC8 (struct lan743x_adapter*,struct pci_dev*) ; 
 struct lan743x_adapter* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (struct net_device*) ; 

__attribute__((used)) static int FUNC14(struct pci_dev *pdev,
				const struct pci_device_id *id)
{
	struct lan743x_adapter *adapter = NULL;
	struct net_device *netdev = NULL;
	int ret = -ENODEV;

	netdev = FUNC1(&pdev->dev,
				     sizeof(struct lan743x_adapter));
	if (!netdev)
		goto return_error;

	FUNC0(netdev, &pdev->dev);
	FUNC11(pdev, netdev);
	adapter = FUNC9(netdev);
	adapter->netdev = netdev;
	adapter->msg_enable = NETIF_MSG_DRV | NETIF_MSG_PROBE |
			      NETIF_MSG_LINK | NETIF_MSG_IFUP |
			      NETIF_MSG_IFDOWN | NETIF_MSG_TX_QUEUED;
	netdev->max_mtu = LAN743X_MAX_FRAME_SIZE;

	ret = FUNC8(adapter, pdev);
	if (ret)
		goto return_error;

	ret = FUNC2(adapter);
	if (ret)
		goto cleanup_pci;

	ret = FUNC4(adapter, pdev);
	if (ret)
		goto cleanup_pci;

	ret = FUNC6(adapter);
	if (ret)
		goto cleanup_hardware;

	adapter->netdev->netdev_ops = &lan743x_netdev_ops;
	adapter->netdev->ethtool_ops = &lan743x_ethtool_ops;
	adapter->netdev->features = NETIF_F_SG | NETIF_F_TSO | NETIF_F_HW_CSUM;
	adapter->netdev->hw_features = adapter->netdev->features;

	/* carrier off reporting is important to ethtool even BEFORE open */
	FUNC10(netdev);

	ret = FUNC13(adapter->netdev);
	if (ret < 0)
		goto cleanup_mdiobus;
	return 0;

cleanup_mdiobus:
	FUNC5(adapter);

cleanup_hardware:
	FUNC3(adapter);

cleanup_pci:
	FUNC7(adapter);

return_error:
	FUNC12("Initialization failed\n");
	return ret;
}