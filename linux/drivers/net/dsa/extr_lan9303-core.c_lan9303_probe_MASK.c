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
struct lan9303 {int /*<<< orphan*/  dev; int /*<<< orphan*/  alr_mutex; int /*<<< orphan*/  indirect_mutex; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct lan9303*) ; 
 int /*<<< orphan*/  FUNC2 (struct lan9303*) ; 
 int FUNC3 (struct lan9303*,struct device_node*) ; 
 int FUNC4 (struct lan9303*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct lan9303 *chip, struct device_node *np)
{
	int ret;

	FUNC5(&chip->indirect_mutex);
	FUNC5(&chip->alr_mutex);

	ret = FUNC3(chip, np);
	if (ret)
		return ret;

	FUNC2(chip);

	ret = FUNC1(chip);
	if (ret)
		return ret;

	ret = FUNC4(chip);
	if (ret) {
		FUNC0(chip->dev, "Failed to register switch: %d\n", ret);
		return ret;
	}

	return 0;
}