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
struct mtd_info {struct fsl_upm_nand* name; } ;
struct fsl_upm_nand {int mchip_count; scalar_t__* rnb_gpio; int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 struct fsl_upm_nand* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_upm_nand*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mtd_info* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *ofdev)
{
	struct fsl_upm_nand *fun = FUNC0(&ofdev->dev);
	struct mtd_info *mtd = FUNC4(&fun->chip);
	int i;

	FUNC3(&fun->chip);
	FUNC2(mtd->name);

	for (i = 0; i < fun->mchip_count; i++) {
		if (fun->rnb_gpio[i] < 0)
			break;
		FUNC1(fun->rnb_gpio[i]);
	}

	FUNC2(fun);

	return 0;
}