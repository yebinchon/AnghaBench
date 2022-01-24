#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xgene_enet_pdata {int enet_id; scalar_t__ phy_mode; scalar_t__ mdio_driver; int /*<<< orphan*/  stats_lock; int /*<<< orphan*/  link_work; TYPE_1__* mac_ops; int /*<<< orphan*/  mss_lock; int /*<<< orphan*/  mac_lock; struct net_device* ndev; struct platform_device* pdev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct net_device {int features; int hw_features; int /*<<< orphan*/ * netdev_ops; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
typedef  enum xgene_enet_id { ____Placeholder_xgene_enet_id } xgene_enet_id ;
struct TYPE_2__ {void (* link_state ) (struct work_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void (*) (struct work_struct*)) ; 
 int NETIF_F_GRO ; 
 int NETIF_F_GSO ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 scalar_t__ PHY_INTERFACE_MODE_XGMII ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct device*) ; 
 int /*<<< orphan*/  XGENE_NUM_RX_RING ; 
 int /*<<< orphan*/  XGENE_NUM_TX_RING ; 
 struct acpi_device_id* FUNC3 (int /*<<< orphan*/ ,struct device*) ; 
 struct net_device* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*) ; 
 struct xgene_enet_pdata* FUNC8 (struct net_device*) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,struct device*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct xgene_enet_pdata*) ; 
 int FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xgene_enet_acpi_match ; 
 int /*<<< orphan*/  FUNC14 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC15 (struct xgene_enet_pdata*) ; 
 int FUNC16 (struct xgene_enet_pdata*) ; 
 int FUNC17 (struct xgene_enet_pdata*) ; 
 int FUNC18 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC19 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC20 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  xgene_enet_of_match ; 
 int /*<<< orphan*/  FUNC21 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct xgene_enet_pdata*) ; 
 int FUNC24 (struct xgene_enet_pdata*) ; 
 int /*<<< orphan*/  xgene_ndev_ops ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct net_device *ndev;
	struct xgene_enet_pdata *pdata;
	struct device *dev = &pdev->dev;
	void (*link_state)(struct work_struct *);
	const struct of_device_id *of_id;
	int ret;

	ndev = FUNC4(sizeof(struct xgene_enet_pdata),
				  XGENE_NUM_RX_RING, XGENE_NUM_TX_RING);
	if (!ndev)
		return -ENOMEM;

	pdata = FUNC8(ndev);

	pdata->pdev = pdev;
	pdata->ndev = ndev;
	FUNC2(ndev, dev);
	FUNC11(pdev, pdata);
	ndev->netdev_ops = &xgene_ndev_ops;
	FUNC22(ndev);
	ndev->features |= NETIF_F_IP_CSUM |
			  NETIF_F_GSO |
			  NETIF_F_GRO |
			  NETIF_F_SG;

	of_id = FUNC9(xgene_enet_of_match, &pdev->dev);
	if (of_id) {
		pdata->enet_id = (enum xgene_enet_id)of_id->data;
	}
#ifdef CONFIG_ACPI
	else {
		const struct acpi_device_id *acpi_id;

		acpi_id = acpi_match_device(xgene_enet_acpi_match, &pdev->dev);
		if (acpi_id)
			pdata->enet_id = (enum xgene_enet_id) acpi_id->driver_data;
	}
#endif
	if (!pdata->enet_id) {
		ret = -ENODEV;
		goto err;
	}

	ret = FUNC16(pdata);
	if (ret)
		goto err;

	FUNC23(pdata);
	FUNC13(&pdata->mac_lock);

	if (pdata->phy_mode == PHY_INTERFACE_MODE_XGMII) {
		ndev->features |= NETIF_F_TSO | NETIF_F_RXCSUM;
		FUNC13(&pdata->mss_lock);
	}
	ndev->hw_features = ndev->features;

	ret = FUNC5(dev, FUNC0(64));
	if (ret) {
		FUNC7(ndev, "No usable DMA configuration\n");
		goto err;
	}

	FUNC14(pdata);

	ret = FUNC17(pdata);
	if (ret)
		goto err2;

	link_state = pdata->mac_ops->link_state;
	if (pdata->phy_mode == PHY_INTERFACE_MODE_XGMII) {
		FUNC1(&pdata->link_work, link_state);
	} else if (!pdata->mdio_driver) {
		if (FUNC10(pdata->phy_mode))
			ret = FUNC18(pdata);
		else
			FUNC1(&pdata->link_work, link_state);

		if (ret)
			goto err1;
	}

	FUNC13(&pdata->stats_lock);
	ret = FUNC24(pdata);
	if (ret)
		goto err1;

	FUNC20(pdata);
	ret = FUNC12(ndev);
	if (ret) {
		FUNC7(ndev, "Failed to register netdev\n");
		goto err1;
	}

	return 0;

err1:
	/*
	 * If necessary, free_netdev() will call netif_napi_del() and undo
	 * the effects of xgene_enet_napi_add()'s calls to netif_napi_add().
	 */

	FUNC15(pdata);

err2:
	if (pdata->mdio_driver)
		FUNC21(pdata);
	else if (FUNC10(pdata->phy_mode))
		FUNC19(pdata);
err:
	FUNC6(ndev);
	return ret;
}