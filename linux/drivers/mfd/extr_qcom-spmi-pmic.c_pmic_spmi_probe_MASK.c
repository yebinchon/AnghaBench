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
struct spmi_device {int usid; int /*<<< orphan*/  dev; } ;
struct regmap {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct regmap* FUNC3 (struct spmi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spmi_regmap_config ; 

__attribute__((used)) static int FUNC5(struct spmi_device *sdev)
{
	struct regmap *regmap;

	regmap = FUNC3(sdev, &spmi_regmap_config);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	/* Only the first slave id for a PMIC contains this information */
	if (sdev->usid % 2 == 0)
		FUNC4(regmap, &sdev->dev);

	return FUNC2(&sdev->dev);
}