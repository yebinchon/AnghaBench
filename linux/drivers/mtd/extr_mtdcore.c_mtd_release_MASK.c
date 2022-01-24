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
struct mtd_info {int /*<<< orphan*/  index; } ;
struct device {int dummy; } ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  mtd_class ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct mtd_info *mtd = FUNC1(dev);
	dev_t index = FUNC0(mtd->index);

	/* remove /dev/mtdXro node */
	FUNC2(&mtd_class, index + 1);
}