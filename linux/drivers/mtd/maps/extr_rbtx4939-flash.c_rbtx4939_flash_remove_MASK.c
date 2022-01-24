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
struct rbtx4939_flash_info {scalar_t__ mtd; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct rbtx4939_flash_info* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *dev)
{
	struct rbtx4939_flash_info *info;

	info = FUNC2(dev);
	if (!info)
		return 0;

	if (info->mtd) {
		FUNC1(info->mtd);
		FUNC0(info->mtd);
	}
	return 0;
}