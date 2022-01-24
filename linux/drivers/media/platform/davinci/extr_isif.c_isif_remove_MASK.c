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
struct TYPE_2__ {int /*<<< orphan*/  linear_tbl1_addr; int /*<<< orphan*/  linear_tbl0_addr; int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ isif_cfg ; 
 int /*<<< orphan*/  isif_hw_dev ; 
 struct resource* FUNC1 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct resource	*res;
	int i = 0;

	FUNC0(isif_cfg.base_addr);
	FUNC0(isif_cfg.linear_tbl0_addr);
	FUNC0(isif_cfg.linear_tbl1_addr);
	while (i < 3) {
		res = FUNC1(pdev, IORESOURCE_MEM, i);
		if (res)
			FUNC2(res->start, FUNC3(res));
		i++;
	}
	FUNC4(&isif_hw_dev);
	return 0;
}