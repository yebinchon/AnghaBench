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
struct TYPE_2__ {int /*<<< orphan*/  (* remove ) (struct platform_device*) ;} ;
struct platform_nand_data {TYPE_1__ ctrl; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct plat_nand_data {int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 struct platform_nand_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct plat_nand_data* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct plat_nand_data *data = FUNC2(pdev);
	struct platform_nand_data *pdata = FUNC0(&pdev->dev);

	FUNC1(&data->chip);
	if (pdata->ctrl.remove)
		pdata->ctrl.remove(pdev);

	return 0;
}