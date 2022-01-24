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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 TYPE_1__ ccdc_cfg ; 
 int /*<<< orphan*/  ccdc_hw_dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC1 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct resource	*res;

	FUNC0(ccdc_cfg.base_addr);
	res = FUNC1(pdev, IORESOURCE_MEM, 0);
	if (res)
		FUNC2(res->start, FUNC3(res));
	FUNC4(&ccdc_hw_dev);
	return 0;
}