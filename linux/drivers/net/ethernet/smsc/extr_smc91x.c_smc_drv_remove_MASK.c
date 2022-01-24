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
struct smc_local {int /*<<< orphan*/  base; scalar_t__ dma_chan; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  SMC_IO_EXTENT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct smc_local* FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (struct platform_device*) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC5(pdev);
	struct smc_local *lp = FUNC4(ndev);
	struct resource *res;

	FUNC11(ndev);

	FUNC1(ndev->irq, ndev);

#ifdef CONFIG_ARCH_PXA
	if (lp->dma_chan)
		dma_release_channel(lp->dma_chan);
#endif
	FUNC3(lp->base);

	FUNC10(pdev,ndev);
	FUNC9(pdev,ndev);

	res = FUNC7(pdev, IORESOURCE_MEM, "smc91x-regs");
	if (!res)
		res = FUNC6(pdev, IORESOURCE_MEM, 0);
	FUNC8(res->start, SMC_IO_EXTENT);

	FUNC2(ndev);

	return 0;
}