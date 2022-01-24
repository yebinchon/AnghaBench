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
struct powernv_flash {int /*<<< orphan*/  mtd; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct powernv_flash* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct powernv_flash *data = FUNC0(&(pdev->dev));

	/* All resources should be freed automatically */
	return FUNC1(&(data->mtd));
}