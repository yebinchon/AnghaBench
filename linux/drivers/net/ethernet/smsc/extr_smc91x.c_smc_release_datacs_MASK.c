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
struct smc_local {int /*<<< orphan*/ * datacs; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ SMC_CAN_USE_DATACS ; 
 int /*<<< orphan*/  SMC_DATA_EXTENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct smc_local* FUNC1 (struct net_device*) ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct platform_device *pdev, struct net_device *ndev)
{
	if (SMC_CAN_USE_DATACS) {
		struct smc_local *lp = FUNC1(ndev);
		struct resource * res = FUNC2(pdev, IORESOURCE_MEM, "smc91x-data32");

		if (lp->datacs)
			FUNC0(lp->datacs);

		lp->datacs = NULL;

		if (res)
			FUNC3(res->start, SMC_DATA_EXTENT);
	}
}