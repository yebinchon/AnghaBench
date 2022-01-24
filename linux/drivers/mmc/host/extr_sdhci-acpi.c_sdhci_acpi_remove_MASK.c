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
struct sdhci_acpi_host {int /*<<< orphan*/  host; TYPE_1__* slot; scalar_t__ use_runtime_pm; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_slot ) (struct platform_device*) ;int /*<<< orphan*/  (* remove_slot ) (struct platform_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_INT_STATUS ; 
 struct sdhci_acpi_host* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct sdhci_acpi_host *c = FUNC0(pdev);
	struct device *dev = &pdev->dev;
	int dead;

	if (c->use_runtime_pm) {
		FUNC2(dev);
		FUNC1(dev);
		FUNC3(dev);
	}

	if (c->slot && c->slot->remove_slot)
		c->slot->remove_slot(pdev);

	dead = (FUNC5(c->host, SDHCI_INT_STATUS) == ~0);
	FUNC6(c->host, dead);

	if (c->slot && c->slot->free_slot)
		c->slot->free_slot(pdev);

	FUNC4(c->host);

	return 0;
}