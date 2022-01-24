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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct i596_private {int /*<<< orphan*/  mpu_port; int /*<<< orphan*/  ca; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIB82596_DMA_ATTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct i596_private* FUNC3 (struct net_device*) ; 
 struct net_device* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct net_device *dev = FUNC4(pdev);
	struct i596_private *lp = FUNC3(dev);

	FUNC5(dev);
	FUNC0(dev->dev.parent, sizeof(struct i596_private), lp->dma,
		       lp->dma_addr, LIB82596_DMA_ATTR);
	FUNC2(lp->ca);
	FUNC2(lp->mpu_port);
	FUNC1 (dev);
	return 0;
}