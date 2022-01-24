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
typedef  int /*<<< orphan*/  u32 ;
struct sdhci_host {int /*<<< orphan*/  mmc; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ESDHC_DMA_SNOOP ; 
 int /*<<< orphan*/  ESDHC_DMA_SYSCTL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sdhci_host *host)
{
	u32 value;
	struct device *dev = FUNC2(host->mmc);

	if (FUNC3(dev->of_node, "fsl,ls1043a-esdhc") ||
	    FUNC3(dev->of_node, "fsl,ls1046a-esdhc"))
		FUNC1(dev, FUNC0(40));

	value = FUNC5(host, ESDHC_DMA_SYSCTL);

	if (FUNC4(dev->of_node))
		value |= ESDHC_DMA_SNOOP;
	else
		value &= ~ESDHC_DMA_SNOOP;

	FUNC6(host, value, ESDHC_DMA_SYSCTL);
	return 0;
}