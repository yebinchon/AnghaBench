#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct twl4030_power_data {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct twl4030_power_data* data; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int SEQ_OFFSYNC ; 
 int /*<<< orphan*/  TWL4030_PM_MASTER_CFG_P123_TRANSITION ; 
 int TWL4030_PM_MASTER_KEY_CFG1 ; 
 int TWL4030_PM_MASTER_KEY_CFG2 ; 
 int /*<<< orphan*/  TWL4030_PM_MASTER_PROTECT_KEY ; 
 int /*<<< orphan*/  TWL_MODULE_PM_MASTER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 struct twl4030_power_data* FUNC1 (TYPE_1__*) ; 
 struct of_device_id* FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ pm_power_off ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct twl4030_power_data const*) ; 
 int FUNC7 (struct twl4030_power_data const*) ; 
 int /*<<< orphan*/  twl4030_power_of_match ; 
 scalar_t__ twl4030_power_off ; 
 scalar_t__ FUNC8 (struct twl4030_power_data const*,struct device_node*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	const struct twl4030_power_data *pdata = FUNC1(&pdev->dev);
	struct device_node *node = pdev->dev.of_node;
	const struct of_device_id *match;
	int err = 0;
	int err2 = 0;
	u8 val;

	if (!pdata && !node) {
		FUNC0(&pdev->dev, "Platform data is missing\n");
		return -EINVAL;
	}

	err = FUNC10(TWL_MODULE_PM_MASTER, TWL4030_PM_MASTER_KEY_CFG1,
			       TWL4030_PM_MASTER_PROTECT_KEY);
	err |= FUNC10(TWL_MODULE_PM_MASTER,
			       TWL4030_PM_MASTER_KEY_CFG2,
			       TWL4030_PM_MASTER_PROTECT_KEY);

	if (err) {
		FUNC4("TWL4030 Unable to unlock registers\n");
		return err;
	}

	match = FUNC2(FUNC3(twl4030_power_of_match),
				&pdev->dev);
	if (match && match->data)
		pdata = match->data;

	if (pdata) {
		err = FUNC7(pdata);
		if (err) {
			FUNC4("TWL4030 failed to load scripts\n");
			goto relock;
		}
		err = FUNC6(pdata);
		if (err) {
			FUNC4("TWL4030 failed to configure resource\n");
			goto relock;
		}
	}

	/* Board has to be wired properly to use this feature */
	if (FUNC8(pdata, node) && !pm_power_off) {
		/* Default for SEQ_OFFSYNC is set, lets ensure this */
		err = FUNC9(TWL_MODULE_PM_MASTER, &val,
				      TWL4030_PM_MASTER_CFG_P123_TRANSITION);
		if (err) {
			FUNC5("TWL4030 Unable to read registers\n");
		} else if (!(val & SEQ_OFFSYNC)) {
			val |= SEQ_OFFSYNC;
			err = FUNC10(TWL_MODULE_PM_MASTER, val,
					TWL4030_PM_MASTER_CFG_P123_TRANSITION);
			if (err) {
				FUNC4("TWL4030 Unable to setup SEQ_OFFSYNC\n");
				goto relock;
			}
		}

		pm_power_off = twl4030_power_off;
	}

relock:
	err2 = FUNC10(TWL_MODULE_PM_MASTER, 0,
			       TWL4030_PM_MASTER_PROTECT_KEY);
	if (err2) {
		FUNC4("TWL4030 Unable to relock registers\n");
		return err2;
	}

	return err;
}