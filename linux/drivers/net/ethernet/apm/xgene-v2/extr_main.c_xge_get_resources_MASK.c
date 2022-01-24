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
struct TYPE_2__ {int phy_mode; int irq; int /*<<< orphan*/  base_addr; } ;
struct xge_pdata {TYPE_1__ resources; struct net_device* ndev; struct platform_device* pdev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  perm_addr; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int PHY_INTERFACE_MODE_RGMII ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 

__attribute__((used)) static int FUNC9(struct xge_pdata *pdata)
{
	struct platform_device *pdev;
	struct net_device *ndev;
	int phy_mode, ret = 0;
	struct resource *res;
	struct device *dev;

	pdev = pdata->pdev;
	dev = &pdev->dev;
	ndev = pdata->ndev;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC0(dev, "Resource enet_csr not defined\n");
		return -ENODEV;
	}

	pdata->resources.base_addr = FUNC3(dev, res->start,
						  FUNC8(res));
	if (!pdata->resources.base_addr) {
		FUNC0(dev, "Unable to retrieve ENET Port CSR region\n");
		return -ENOMEM;
	}

	if (!FUNC1(dev, ndev->dev_addr, ETH_ALEN))
		FUNC4(ndev);

	FUNC5(ndev->perm_addr, ndev->dev_addr, ndev->addr_len);

	phy_mode = FUNC2(dev);
	if (phy_mode < 0) {
		FUNC0(dev, "Unable to get phy-connection-type\n");
		return phy_mode;
	}
	pdata->resources.phy_mode = phy_mode;

	if (pdata->resources.phy_mode != PHY_INTERFACE_MODE_RGMII) {
		FUNC0(dev, "Incorrect phy-connection-type specified\n");
		return -ENODEV;
	}

	ret = FUNC6(pdev, 0);
	if (ret < 0)
		return ret;
	pdata->resources.irq = ret;

	return 0;
}