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
struct sdhci_host {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 struct sdhci_host* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*,int) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct sdhci_host *host = FUNC0(pdev);

	FUNC4(host, true);
	FUNC2(dev);
	FUNC1(dev);
	FUNC3(pdev);

	return 0;
}