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
struct platram_info {scalar_t__ mtd; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLATRAM_RO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct platram_info*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct platram_info*,int /*<<< orphan*/ ) ; 
 struct platram_info* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct platram_info *info = FUNC5(pdev);

	FUNC0(&pdev->dev, "removing device\n");

	if (info == NULL)
		return 0;

	if (info->mtd) {
		FUNC3(info->mtd);
		FUNC2(info->mtd);
	}

	/* ensure ram is left read-only */

	FUNC4(info, PLATRAM_RO);

	FUNC1(info);

	return 0;
}