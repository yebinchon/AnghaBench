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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pcf50633 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int FUNC1 (struct platform_device*) ; 
 struct platform_device* FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 

__attribute__((used)) static void
FUNC4(struct pcf50633 *pcf, const char *name,
						struct platform_device **pdev)
{
	int ret;

	*pdev = FUNC2(name, -1);
	if (!*pdev) {
		FUNC0(pcf->dev, "Failed to allocate %s\n", name);
		return;
	}

	(*pdev)->dev.parent = pcf->dev;

	ret = FUNC1(*pdev);
	if (ret) {
		FUNC0(pcf->dev, "Failed to register %s: %d\n", name, ret);
		FUNC3(*pdev);
		*pdev = NULL;
	}
}