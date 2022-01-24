#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  struct clk const clk ;
typedef  struct clk u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct net_device {int watchdog_timeo; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  name; int /*<<< orphan*/  features; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct fs_platform_info {int rx_ring; int tx_ring; int rx_copybreak; int napi_weight; int use_rmii; scalar_t__ phy_node; struct clk const* clk_per; int /*<<< orphan*/  cp_command; } ;
struct fs_enet_private {char* mapped_as_page; int tx_ring; int rx_ring; TYPE_1__* ops; int /*<<< orphan*/  napi; int /*<<< orphan*/  timeout_work; scalar_t__ rx_bd_base; scalar_t__ tx_bd_base; scalar_t__ ring_base; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  lock; struct sk_buff** rx_skbuff; struct sk_buff** tx_skbuff; struct fs_platform_info* fpi; struct net_device* ndev; TYPE_2__* dev; } ;
struct TYPE_5__ {int (* setup_data ) (struct net_device*) ;int (* allocate_bd ) (struct net_device*) ;int /*<<< orphan*/  (* cleanup_data ) (struct net_device*) ;int /*<<< orphan*/  (* free_bd ) (struct net_device*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct clk const*) ; 
 int /*<<< orphan*/  FUNC2 (struct of_device_id const*) ; 
 int /*<<< orphan*/  NETIF_F_SG ; 
 int RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,TYPE_2__*) ; 
 int TX_RING_SIZE ; 
 struct net_device* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct clk const*) ; 
 int FUNC6 (struct clk const*) ; 
 struct clk* FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct clk const*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  fs_enet_match ; 
 int /*<<< orphan*/  fs_enet_napi ; 
 int /*<<< orphan*/  fs_enet_netdev_ops ; 
 int /*<<< orphan*/  fs_ethtool_ops ; 
 int /*<<< orphan*/  fs_timeout_work ; 
 int /*<<< orphan*/  FUNC10 (struct fs_platform_info*) ; 
 struct fs_platform_info* FUNC11 (int,int /*<<< orphan*/ ) ; 
 struct fs_enet_private* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,char*) ; 
 struct clk* FUNC16 (int /*<<< orphan*/ ) ; 
 void* FUNC17 (int /*<<< orphan*/ ,char*,int*) ; 
 struct of_device_id* FUNC18 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct platform_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (char*,char const*) ; 
 int FUNC30 (struct net_device*) ; 
 int FUNC31 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC32 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC33 (struct net_device*) ; 

__attribute__((used)) static int FUNC34(struct platform_device *ofdev)
{
	const struct of_device_id *match;
	struct net_device *ndev;
	struct fs_enet_private *fep;
	struct fs_platform_info *fpi;
	const u32 *data;
	struct clk *clk;
	int err;
	const u8 *mac_addr;
	const char *phy_connection_type;
	int privsize, len, ret = -ENODEV;

	match = FUNC18(fs_enet_match, &ofdev->dev);
	if (!match)
		return -EINVAL;

	fpi = FUNC11(sizeof(*fpi), GFP_KERNEL);
	if (!fpi)
		return -ENOMEM;

	if (!FUNC2(match)) {
		data = FUNC17(ofdev->dev.of_node, "fsl,cpm-command", &len);
		if (!data || len != 4)
			goto out_free_fpi;

		fpi->cp_command = *data;
	}

	fpi->rx_ring = RX_RING_SIZE;
	fpi->tx_ring = TX_RING_SIZE;
	fpi->rx_copybreak = 240;
	fpi->napi_weight = 17;
	fpi->phy_node = FUNC21(ofdev->dev.of_node, "phy-handle", 0);
	if (!fpi->phy_node && FUNC23(ofdev->dev.of_node)) {
		err = FUNC24(ofdev->dev.of_node);
		if (err)
			goto out_free_fpi;

		/* In the case of a fixed PHY, the DT node associated
		 * to the PHY is the Ethernet MAC DT node.
		 */
		fpi->phy_node = FUNC19(ofdev->dev.of_node);
	}

	if (FUNC15(ofdev->dev.of_node, "fsl,mpc5125-fec")) {
		phy_connection_type = FUNC17(ofdev->dev.of_node,
						"phy-connection-type", NULL);
		if (phy_connection_type && !FUNC29("rmii", phy_connection_type))
			fpi->use_rmii = 1;
	}

	/* make clock lookup non-fatal (the driver is shared among platforms),
	 * but require enable to succeed when a clock was specified/found,
	 * keep a reference to the clock upon successful acquisition
	 */
	clk = FUNC7(&ofdev->dev, "per");
	if (!FUNC1(clk)) {
		ret = FUNC6(clk);
		if (ret)
			goto out_deregister_fixed_link;

		fpi->clk_per = clk;
	}

	privsize = sizeof(*fep) +
	           sizeof(struct sk_buff **) *
		     (fpi->rx_ring + fpi->tx_ring) +
		   sizeof(char) * fpi->tx_ring;

	ndev = FUNC4(privsize);
	if (!ndev) {
		ret = -ENOMEM;
		goto out_put;
	}

	FUNC3(ndev, &ofdev->dev);
	FUNC25(ofdev, ndev);

	fep = FUNC12(ndev);
	fep->dev = &ofdev->dev;
	fep->ndev = ndev;
	fep->fpi = fpi;
	fep->ops = match->data;

	ret = fep->ops->setup_data(ndev);
	if (ret)
		goto out_free_dev;

	fep->rx_skbuff = (struct sk_buff **)&fep[1];
	fep->tx_skbuff = fep->rx_skbuff + fpi->rx_ring;
	fep->mapped_as_page = (char *)(fep->rx_skbuff + fpi->rx_ring +
				       fpi->tx_ring);

	FUNC28(&fep->lock);
	FUNC28(&fep->tx_lock);

	mac_addr = FUNC16(ofdev->dev.of_node);
	if (!FUNC1(mac_addr))
		FUNC8(ndev->dev_addr, mac_addr);

	ret = fep->ops->allocate_bd(ndev);
	if (ret)
		goto out_cleanup_data;

	fep->rx_bd_base = fep->ring_base;
	fep->tx_bd_base = fep->rx_bd_base + fpi->rx_ring;

	fep->tx_ring = fpi->tx_ring;
	fep->rx_ring = fpi->rx_ring;

	ndev->netdev_ops = &fs_enet_netdev_ops;
	ndev->watchdog_timeo = 2 * HZ;
	FUNC0(&fep->timeout_work, fs_timeout_work);
	FUNC14(ndev, &fep->napi, fs_enet_napi, fpi->napi_weight);

	ndev->ethtool_ops = &fs_ethtool_ops;

	FUNC13(ndev);

	ndev->features |= NETIF_F_SG;

	ret = FUNC27(ndev);
	if (ret)
		goto out_free_bd;

	FUNC26("%s: fs_enet: %pM\n", ndev->name, ndev->dev_addr);

	return 0;

out_free_bd:
	fep->ops->free_bd(ndev);
out_cleanup_data:
	fep->ops->cleanup_data(ndev);
out_free_dev:
	FUNC9(ndev);
out_put:
	if (fpi->clk_per)
		FUNC5(fpi->clk_per);
out_deregister_fixed_link:
	FUNC20(fpi->phy_node);
	if (FUNC23(ofdev->dev.of_node))
		FUNC22(ofdev->dev.of_node);
out_free_fpi:
	FUNC10(fpi);
	return ret;
}