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
struct xge_pdata {int /*<<< orphan*/  napi; struct net_device* ndev; struct platform_device* pdev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct net_device {int features; int hw_features; int /*<<< orphan*/ * netdev_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int NETIF_F_GRO ; 
 int NETIF_F_GSO ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct device*) ; 
 struct net_device* FUNC2 (int) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 struct xge_pdata* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct xge_pdata*) ; 
 int FUNC9 (struct net_device*) ; 
 int FUNC10 (struct xge_pdata*) ; 
 int FUNC11 (struct net_device*) ; 
 int FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  xge_napi ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  xgene_ndev_ops ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct net_device *ndev;
	struct xge_pdata *pdata;
	int ret;

	ndev = FUNC2(sizeof(*pdata));
	if (!ndev)
		return -ENOMEM;

	pdata = FUNC6(ndev);

	pdata->pdev = pdev;
	pdata->ndev = ndev;
	FUNC1(ndev, dev);
	FUNC8(pdev, pdata);
	ndev->netdev_ops = &xgene_ndev_ops;

	ndev->features |= NETIF_F_GSO |
			  NETIF_F_GRO;

	ret = FUNC10(pdata);
	if (ret)
		goto err;

	ndev->hw_features = ndev->features;
	FUNC13(ndev);

	ret = FUNC3(dev, FUNC0(64));
	if (ret) {
		FUNC5(ndev, "No usable DMA configuration\n");
		goto err;
	}

	ret = FUNC11(ndev);
	if (ret)
		goto err;

	ret = FUNC12(ndev);
	if (ret)
		goto err;

	FUNC7(ndev, &pdata->napi, xge_napi, NAPI_POLL_WEIGHT);

	ret = FUNC9(ndev);
	if (ret) {
		FUNC5(ndev, "Failed to register netdev\n");
		goto err;
	}

	return 0;

err:
	FUNC4(ndev);

	return ret;
}