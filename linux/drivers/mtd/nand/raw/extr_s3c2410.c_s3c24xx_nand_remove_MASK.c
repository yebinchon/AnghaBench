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
struct s3c2410_nand_mtd {int /*<<< orphan*/  chip; } ;
struct s3c2410_nand_info {int mtd_count; int /*<<< orphan*/  clk; struct s3c2410_nand_mtd* mtds; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct s3c2410_nand_mtd*) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c2410_nand_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct s3c2410_nand_info*) ; 
 struct s3c2410_nand_info* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct s3c2410_nand_info *info = FUNC5(pdev);

	if (info == NULL)
		return 0;

	FUNC4(info);

	/* Release all our mtds  and their partitions, then go through
	 * freeing the resources used
	 */

	if (info->mtds != NULL) {
		struct s3c2410_nand_mtd *ptr = info->mtds;
		int mtdno;

		for (mtdno = 0; mtdno < info->mtd_count; mtdno++, ptr++) {
			FUNC2("releasing mtd %d (%p)\n", mtdno, ptr);
			FUNC1(&ptr->chip);
		}
	}

	/* free the common resources */

	if (!FUNC0(info->clk))
		FUNC3(info, CLOCK_DISABLE);

	return 0;
}