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
struct platform_device {int dummy; } ;
struct mtd_info {int dummy; } ;
struct ams_delta_nand {int /*<<< orphan*/  nand_chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mtd_info* FUNC2 (int /*<<< orphan*/ *) ; 
 struct ams_delta_nand* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct ams_delta_nand *priv = FUNC3(pdev);
	struct mtd_info *mtd = FUNC2(&priv->nand_chip);

	/* Unregister device */
	FUNC1(FUNC0(mtd));

	return 0;
}