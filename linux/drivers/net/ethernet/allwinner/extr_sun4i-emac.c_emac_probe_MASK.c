#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct net_device {unsigned long base_addr; int irq; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  name; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; } ;
struct emac_board_info {char const* clk; int emacrx_completed_flag; TYPE_1__* dev; scalar_t__ membase; void* phy_node; int /*<<< orphan*/  lock; int /*<<< orphan*/  msg_enable; struct platform_device* pdev; struct net_device* ndev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMAC_DEFAULT_MSG_ENABLE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,TYPE_1__*) ; 
 struct net_device* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 char const* FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  emac_ethtool_ops ; 
 int /*<<< orphan*/  emac_netdev_ops ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct emac_board_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int FUNC16 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*,char*) ; 
 struct emac_board_info* FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC23 (struct device_node*) ; 
 scalar_t__ FUNC24 (struct device_node*,int /*<<< orphan*/ ) ; 
 void* FUNC25 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct platform_device*,struct net_device*) ; 
 int FUNC27 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int FUNC29 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*) ; 
 int /*<<< orphan*/  watchdog ; 

__attribute__((used)) static int FUNC31(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct emac_board_info *db;
	struct net_device *ndev;
	int ret = 0;
	const char *mac_addr;

	ndev = FUNC3(sizeof(struct emac_board_info));
	if (!ndev) {
		FUNC6(&pdev->dev, "could not allocate device.\n");
		return -ENOMEM;
	}

	FUNC2(ndev, &pdev->dev);

	db = FUNC20(ndev);

	db->dev = &pdev->dev;
	db->ndev = ndev;
	db->pdev = pdev;
	db->msg_enable = FUNC22(debug, EMAC_DEFAULT_MSG_ENABLE);

	FUNC28(&db->lock);

	db->membase = FUNC24(np, 0);
	if (!db->membase) {
		FUNC6(&pdev->dev, "failed to remap registers\n");
		ret = -ENOMEM;
		goto out;
	}

	/* fill in parameters for net-dev structure */
	ndev->base_addr = (unsigned long)db->membase;
	ndev->irq = FUNC16(np, 0);
	if (ndev->irq == -ENXIO) {
		FUNC19(ndev, "No irq resource\n");
		ret = ndev->irq;
		goto out_iounmap;
	}

	db->clk = FUNC9(&pdev->dev, NULL);
	if (FUNC0(db->clk)) {
		ret = FUNC1(db->clk);
		goto out_iounmap;
	}

	ret = FUNC5(db->clk);
	if (ret) {
		FUNC6(&pdev->dev, "Error couldn't enable clock (%d)\n", ret);
		goto out_iounmap;
	}

	ret = FUNC29(&pdev->dev);
	if (ret) {
		FUNC6(&pdev->dev, "Error couldn't map SRAM to device\n");
		goto out_clk_disable_unprepare;
	}

	db->phy_node = FUNC25(np, "phy-handle", 0);
	if (!db->phy_node)
		db->phy_node = FUNC25(np, "phy", 0);
	if (!db->phy_node) {
		FUNC6(&pdev->dev, "no associated PHY\n");
		ret = -ENODEV;
		goto out_release_sram;
	}

	/* Read MAC-address from DT */
	mac_addr = FUNC23(np);
	if (!FUNC0(mac_addr))
		FUNC13(ndev->dev_addr, mac_addr);

	/* Check if the MAC address is valid, if not get a random one */
	if (!FUNC17(ndev->dev_addr)) {
		FUNC12(ndev);
		FUNC8(&pdev->dev, "using random MAC address %pM\n",
			 ndev->dev_addr);
	}

	db->emacrx_completed_flag = 1;
	FUNC10(ndev);
	FUNC11(db);

	ndev->netdev_ops = &emac_netdev_ops;
	ndev->watchdog_timeo = FUNC18(watchdog);
	ndev->ethtool_ops = &emac_ethtool_ops;

	FUNC26(pdev, ndev);

	/* Carrier starts down, phylib will bring it up */
	FUNC21(ndev);

	ret = FUNC27(ndev);
	if (ret) {
		FUNC6(&pdev->dev, "Registering netdev failed!\n");
		ret = -ENODEV;
		goto out_release_sram;
	}

	FUNC7(&pdev->dev, "%s: at %p, IRQ %d MAC: %pM\n",
		 ndev->name, db->membase, ndev->irq, ndev->dev_addr);

	return 0;

out_release_sram:
	FUNC30(&pdev->dev);
out_clk_disable_unprepare:
	FUNC4(db->clk);
out_iounmap:
	FUNC15(db->membase);
out:
	FUNC6(db->dev, "not found (%d).\n", ret);

	FUNC14(ndev);

	return ret;
}