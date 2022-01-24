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
struct gpmi_nand_data {int /*<<< orphan*/  nand; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpmi_nand_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct gpmi_nand_data* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct gpmi_nand_data*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct gpmi_nand_data *this = FUNC2(pdev);

	FUNC4(&pdev->dev);
	FUNC3(&pdev->dev);

	FUNC1(&this->nand);
	FUNC0(this);
	FUNC5(this);
	return 0;
}