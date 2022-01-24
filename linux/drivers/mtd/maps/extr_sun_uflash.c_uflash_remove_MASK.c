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
struct TYPE_2__ {int /*<<< orphan*/ * virt; int /*<<< orphan*/  size; } ;
struct uflash_dev {TYPE_1__ map; scalar_t__ mtd; } ;
struct platform_device {int /*<<< orphan*/ * resource; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct uflash_dev* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct uflash_dev*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *op)
{
	struct uflash_dev *up = FUNC0(&op->dev);

	if (up->mtd) {
		FUNC3(up->mtd);
		FUNC2(up->mtd);
	}
	if (up->map.virt) {
		FUNC4(&op->resource[0], up->map.virt, up->map.size);
		up->map.virt = NULL;
	}

	FUNC1(up);

	return 0;
}