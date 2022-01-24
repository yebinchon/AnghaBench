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
struct ndfc_controller {int /*<<< orphan*/  chip; } ;
struct mtd_info {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct ndfc_controller* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mtd_info* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *ofdev)
{
	struct ndfc_controller *ndfc = FUNC0(&ofdev->dev);
	struct mtd_info *mtd = FUNC3(&ndfc->chip);

	FUNC2(&ndfc->chip);
	FUNC1(mtd->name);

	return 0;
}