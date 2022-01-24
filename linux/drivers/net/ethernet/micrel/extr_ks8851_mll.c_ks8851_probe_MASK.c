#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_5__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct net_device {int irq; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_4__ {int phy_id; int phy_id_mask; int reg_num_mask; int /*<<< orphan*/  mdio_write; int /*<<< orphan*/  mdio_read; struct net_device* dev; } ;
struct ks_net {char const* hw_addr; char const* hw_addr_cmd; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  msg_enable; TYPE_1__ mii; int /*<<< orphan*/  statelock; int /*<<< orphan*/  lock; struct platform_device* pdev; struct net_device* netdev; } ;
struct ks8851_mll_platform_data {int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 int CIDER_ID ; 
 int CIDER_REV_MASK ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GRR_GSR ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  KS_CIDER ; 
 int /*<<< orphan*/  KS_OBCR ; 
 int NETIF_MSG_DRV ; 
 int NETIF_MSG_LINK ; 
 int NETIF_MSG_PROBE ; 
 int OBCR_ODS_16mA ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,TYPE_2__*) ; 
 struct net_device* FUNC3 (int) ; 
 struct ks8851_mll_platform_data* FUNC4 (TYPE_2__*) ; 
 void* FUNC5 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ks_net*) ; 
 int /*<<< orphan*/  ks_ethtool_ops ; 
 int /*<<< orphan*/  FUNC11 (struct ks_net*) ; 
 int /*<<< orphan*/  ks_netdev_ops ; 
 int /*<<< orphan*/  ks_phy_read ; 
 int /*<<< orphan*/  ks_phy_write ; 
 int FUNC12 (struct ks_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ks_net*) ; 
 scalar_t__ FUNC14 (struct ks_net*) ; 
 int /*<<< orphan*/  FUNC15 (struct ks_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ks_net*) ; 
 int /*<<< orphan*/  FUNC17 (struct ks_net*) ; 
 int /*<<< orphan*/  FUNC18 (struct ks_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ks_net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msg_enable ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC23 (struct net_device*,char*,...) ; 
 struct ks_net* FUNC24 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int) ; 
 char* FUNC26 (scalar_t__) ; 
 int FUNC27 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct platform_device*,struct net_device*) ; 
 int FUNC29 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (struct net_device*) ; 

__attribute__((used)) static int FUNC32(struct platform_device *pdev)
{
	int err;
	struct net_device *netdev;
	struct ks_net *ks;
	u16 id, data;
	const char *mac;

	netdev = FUNC3(sizeof(struct ks_net));
	if (!netdev)
		return -ENOMEM;

	FUNC2(netdev, &pdev->dev);

	ks = FUNC24(netdev);
	ks->netdev = netdev;

	ks->hw_addr = FUNC5(pdev, 0);
	if (FUNC0(ks->hw_addr)) {
		err = FUNC1(ks->hw_addr);
		goto err_free;
	}

	ks->hw_addr_cmd = FUNC5(pdev, 1);
	if (FUNC0(ks->hw_addr_cmd)) {
		err = FUNC1(ks->hw_addr_cmd);
		goto err_free;
	}

	netdev->irq = FUNC27(pdev, 0);

	if ((int)netdev->irq < 0) {
		err = netdev->irq;
		goto err_free;
	}

	ks->pdev = pdev;

	FUNC21(&ks->lock);
	FUNC30(&ks->statelock);

	netdev->netdev_ops = &ks_netdev_ops;
	netdev->ethtool_ops = &ks_ethtool_ops;

	/* setup mii state */
	ks->mii.dev             = netdev;
	ks->mii.phy_id          = 1,
	ks->mii.phy_id_mask     = 1;
	ks->mii.reg_num_mask    = 0xf;
	ks->mii.mdio_read       = ks_phy_read;
	ks->mii.mdio_write      = ks_phy_write;

	FUNC23(netdev, "message enable is %d\n", msg_enable);
	/* set the default message enable */
	ks->msg_enable = FUNC25(msg_enable, (NETIF_MSG_DRV |
						     NETIF_MSG_PROBE |
						     NETIF_MSG_LINK));
	FUNC13(ks);

	/* simple check for a valid chip being connected to the bus */
	if ((FUNC12(ks, KS_CIDER) & ~CIDER_REV_MASK) != CIDER_ID) {
		FUNC22(netdev, "failed to read device ID\n");
		err = -ENODEV;
		goto err_free;
	}

	if (FUNC14(ks)) {
		FUNC22(netdev, "failed to read device ID\n");
		err = -ENODEV;
		goto err_free;
	}

	err = FUNC29(netdev);
	if (err)
		goto err_free;

	FUNC28(pdev, netdev);

	FUNC18(ks, GRR_GSR);
	FUNC11(ks);
	FUNC10(ks);
	FUNC16(ks);
	FUNC17(ks);

	data = FUNC12(ks, KS_OBCR);
	FUNC19(ks, KS_OBCR, data | OBCR_ODS_16mA);

	/* overwriting the default MAC address */
	if (pdev->dev.of_node) {
		mac = FUNC26(pdev->dev.of_node);
		if (!FUNC0(mac))
			FUNC7(ks->mac_addr, mac);
	} else {
		struct ks8851_mll_platform_data *pdata;

		pdata = FUNC4(&pdev->dev);
		if (!pdata) {
			FUNC22(netdev, "No platform data\n");
			err = -ENODEV;
			goto err_pdata;
		}
		FUNC20(ks->mac_addr, pdata->mac_addr, ETH_ALEN);
	}
	if (!FUNC9(ks->mac_addr)) {
		/* Use random MAC address if none passed */
		FUNC6(ks->mac_addr);
		FUNC23(netdev, "Using random mac address\n");
	}
	FUNC23(netdev, "Mac address is: %pM\n", ks->mac_addr);

	FUNC20(netdev->dev_addr, ks->mac_addr, ETH_ALEN);

	FUNC15(ks, netdev->dev_addr);

	id = FUNC12(ks, KS_CIDER);

	FUNC23(netdev, "Found chip, family: 0x%x, id: 0x%x, rev: 0x%x\n",
		    (id >> 8) & 0xff, (id >> 4) & 0xf, (id >> 1) & 0x7);
	return 0;

err_pdata:
	FUNC31(netdev);
err_free:
	FUNC8(netdev);
	return err;
}