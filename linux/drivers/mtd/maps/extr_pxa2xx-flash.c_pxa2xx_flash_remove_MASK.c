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
struct TYPE_2__ {scalar_t__ cached; scalar_t__ virt; } ;
struct pxa2xx_flash_info {TYPE_1__ map; int /*<<< orphan*/  mtd; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa2xx_flash_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct pxa2xx_flash_info* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *dev)
{
	struct pxa2xx_flash_info *info = FUNC4(dev);

	FUNC3(info->mtd);

	FUNC2(info->mtd);
	FUNC0(info->map.virt);
	if (info->map.cached)
		FUNC0(info->map.cached);
	FUNC1(info);
	return 0;
}