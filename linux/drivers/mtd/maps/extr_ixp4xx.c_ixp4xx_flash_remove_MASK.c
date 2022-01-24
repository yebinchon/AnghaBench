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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ixp4xx_flash_info {scalar_t__ mtd; } ;
struct flash_platform_data {int /*<<< orphan*/  (* exit ) () ;} ;

/* Variables and functions */
 struct flash_platform_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct ixp4xx_flash_info* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct platform_device *dev)
{
	struct flash_platform_data *plat = FUNC0(&dev->dev);
	struct ixp4xx_flash_info *info = FUNC3(dev);

	if(!info)
		return 0;

	if (info->mtd) {
		FUNC2(info->mtd);
		FUNC1(info->mtd);
	}

	if (plat->exit)
		plat->exit();

	return 0;
}