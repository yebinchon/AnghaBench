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
struct platform_device {int dummy; } ;
struct netdata_local {scalar_t__ dma_buff_size; int /*<<< orphan*/  clk; int /*<<< orphan*/  mii_bus; int /*<<< orphan*/  net_base; int /*<<< orphan*/  dma_buff_base_p; int /*<<< orphan*/  dma_buff_base_v; TYPE_1__* pdev; } ;
struct net_device {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct netdata_local* FUNC9 (struct net_device*) ; 
 struct net_device* FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC10(pdev);
	struct netdata_local *pldat = FUNC9(ndev);

	FUNC11(ndev);

	if (!FUNC12(&pldat->pdev->dev) ||
	    pldat->dma_buff_size > FUNC6(NULL, NULL))
		FUNC2(&pldat->pdev->dev, pldat->dma_buff_size,
				  pldat->dma_buff_base_v,
				  pldat->dma_buff_base_p);
	FUNC3(ndev->irq, ndev);
	FUNC5(pldat->net_base);
	FUNC8(pldat->mii_bus);
	FUNC7(pldat->mii_bus);
	FUNC0(pldat->clk);
	FUNC1(pldat->clk);
	FUNC4(ndev);

	return 0;
}