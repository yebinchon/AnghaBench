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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  features; int /*<<< orphan*/  mtu; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/ * netdev_ops; } ;
struct hinic_txq_stats {int /*<<< orphan*/  syncp; } ;
struct hinic_rxq_stats {int /*<<< orphan*/  syncp; } ;
struct hinic_rx_mode_work {int /*<<< orphan*/  work; } ;
struct hinic_hwdev {int dummy; } ;
struct hinic_dev {int /*<<< orphan*/  workq; struct hinic_hwdev* hwdev; struct net_device* netdev; struct hinic_rx_mode_work rx_mode_work; int /*<<< orphan*/  vlan_bitmap; struct hinic_rxq_stats rx_stats; struct hinic_txq_stats tx_stats; int /*<<< orphan*/  mgmt_lock; int /*<<< orphan*/  rx_weight; int /*<<< orphan*/  tx_weight; int /*<<< orphan*/ * rxqs; int /*<<< orphan*/ * txqs; scalar_t__ flags; int /*<<< orphan*/  msg_enable; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_MAX_MTU ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HINIC_MGMT_MSG_CMD_LINK_STATUS ; 
 int /*<<< orphan*/  HINIC_WQ_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hinic_hwdev*) ; 
 int /*<<< orphan*/  MSG_ENABLE_DEFAULT ; 
 int FUNC2 (struct hinic_hwdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hinic_dev*) ; 
 struct net_device* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct hinic_hwdev*) ; 
 int /*<<< orphan*/  FUNC14 (struct hinic_hwdev*,int /*<<< orphan*/ ,struct hinic_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct hinic_hwdev*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct hinic_hwdev*) ; 
 struct hinic_hwdev* FUNC17 (struct pci_dev*) ; 
 int /*<<< orphan*/  hinic_netdev_ops ; 
 int FUNC18 (struct hinic_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct hinic_dev*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct hinic_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  link_status_event_handler ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*) ; 
 struct hinic_dev* FUNC23 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*,struct net_device*) ; 
 int FUNC26 (struct net_device*) ; 
 int /*<<< orphan*/  rx_weight ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int) ; 
 int FUNC28 (struct hinic_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  set_rx_mode ; 
 int /*<<< orphan*/  tx_weight ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC30(struct pci_dev *pdev)
{
	struct hinic_rx_mode_work *rx_mode_work;
	struct hinic_txq_stats *tx_stats;
	struct hinic_rxq_stats *rx_stats;
	struct hinic_dev *nic_dev;
	struct net_device *netdev;
	struct hinic_hwdev *hwdev;
	int err, num_qps;

	hwdev = FUNC17(pdev);
	if (FUNC1(hwdev)) {
		FUNC9(&pdev->dev, "Failed to initialize HW device\n");
		return FUNC2(hwdev);
	}

	num_qps = FUNC16(hwdev);
	if (num_qps <= 0) {
		FUNC9(&pdev->dev, "Invalid number of QPS\n");
		err = -EINVAL;
		goto err_num_qps;
	}

	netdev = FUNC5(sizeof(*nic_dev), num_qps);
	if (!netdev) {
		FUNC9(&pdev->dev, "Failed to allocate Ethernet device\n");
		err = -ENOMEM;
		goto err_alloc_etherdev;
	}

	FUNC21(netdev);
	netdev->netdev_ops = &hinic_netdev_ops;
	netdev->max_mtu = ETH_MAX_MTU;

	nic_dev = FUNC23(netdev);
	nic_dev->netdev = netdev;
	nic_dev->hwdev  = hwdev;
	nic_dev->msg_enable = MSG_ENABLE_DEFAULT;
	nic_dev->flags = 0;
	nic_dev->txqs = NULL;
	nic_dev->rxqs = NULL;
	nic_dev->tx_weight = tx_weight;
	nic_dev->rx_weight = rx_weight;

	FUNC27(&nic_dev->mgmt_lock, 1);

	tx_stats = &nic_dev->tx_stats;
	rx_stats = &nic_dev->rx_stats;

	FUNC29(&tx_stats->syncp);
	FUNC29(&rx_stats->syncp);

	nic_dev->vlan_bitmap = FUNC11(&pdev->dev,
					    FUNC4(nic_dev),
					    GFP_KERNEL);
	if (!nic_dev->vlan_bitmap) {
		err = -ENOMEM;
		goto err_vlan_bitmap;
	}

	nic_dev->workq = FUNC7(HINIC_WQ_NAME);
	if (!nic_dev->workq) {
		err = -ENOMEM;
		goto err_workq;
	}

	FUNC25(pdev, netdev);

	err = FUNC19(nic_dev, netdev->dev_addr);
	if (err)
		FUNC10(&pdev->dev, "Failed to get mac address\n");

	err = FUNC18(nic_dev, netdev->dev_addr, 0);
	if (err) {
		FUNC9(&pdev->dev, "Failed to add mac\n");
		goto err_add_mac;
	}

	err = FUNC20(nic_dev, netdev->mtu);
	if (err) {
		FUNC9(&pdev->dev, "Failed to set mtu\n");
		goto err_set_mtu;
	}

	rx_mode_work = &nic_dev->rx_mode_work;
	FUNC0(&rx_mode_work->work, set_rx_mode);

	FUNC22(netdev);

	FUNC24(netdev);

	FUNC14(nic_dev->hwdev, HINIC_MGMT_MSG_CMD_LINK_STATUS,
				nic_dev, link_status_event_handler);

	err = FUNC28(nic_dev, 0, nic_dev->netdev->features, true);
	if (err)
		goto err_set_features;

	FUNC3(netdev, &pdev->dev);

	err = FUNC26(netdev);
	if (err) {
		FUNC9(&pdev->dev, "Failed to register netdev\n");
		goto err_reg_netdev;
	}

	return 0;

err_reg_netdev:
err_set_features:
	FUNC15(nic_dev->hwdev,
				  HINIC_MGMT_MSG_CMD_LINK_STATUS);
	FUNC6(&rx_mode_work->work);

err_set_mtu:
err_add_mac:
	FUNC25(pdev, NULL);
	FUNC8(nic_dev->workq);

err_workq:
err_vlan_bitmap:
	FUNC12(netdev);

err_alloc_etherdev:
err_num_qps:
	FUNC13(hwdev);
	return err;
}