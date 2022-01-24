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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net_device {unsigned long base_addr; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {int irq; } ;
struct emac_adapter {void* base; void* csr; TYPE_1__ irq; struct net_device* netdev; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC3 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev,
				struct emac_adapter *adpt)
{
	struct net_device *netdev = adpt->netdev;
	char maddr[ETH_ALEN];
	int ret = 0;

	/* get mac address */
	if (FUNC2(&pdev->dev, maddr, ETH_ALEN))
		FUNC5(netdev->dev_addr, maddr);
	else
		FUNC4(netdev);

	/* Core 0 interrupt */
	ret = FUNC6(pdev, 0);
	if (ret < 0)
		return ret;
	adpt->irq.irq = ret;

	/* base register address */
	adpt->base = FUNC3(pdev, 0);
	if (FUNC0(adpt->base))
		return FUNC1(adpt->base);

	/* CSR register address */
	adpt->csr = FUNC3(pdev, 1);
	if (FUNC0(adpt->csr))
		return FUNC1(adpt->csr);

	netdev->base_addr = (unsigned long)adpt->base;

	return 0;
}