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
struct regmap {int dummy; } ;
struct lochnagar {scalar_t__ type; int /*<<< orphan*/  analogue_config_lock; struct regmap* regmap; } ;

/* Variables and functions */
 scalar_t__ LOCHNAGAR2 ; 
 int /*<<< orphan*/  LOCHNAGAR2_ANALOGUE_PATH_CTRL1 ; 
 int /*<<< orphan*/  LOCHNAGAR2_ANALOGUE_PATH_UPDATE_MASK ; 
 unsigned int LOCHNAGAR2_ANALOGUE_PATH_UPDATE_STS_MASK ; 
 int LOCHNAGAR_BOOT_DELAY_MS ; 
 int LOCHNAGAR_BOOT_RETRIES ; 
 int /*<<< orphan*/  LOCHNAGAR_CONFIG_POLL_US ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct regmap*,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct lochnagar *lochnagar)
{
	struct regmap *regmap = lochnagar->regmap;
	unsigned int done = LOCHNAGAR2_ANALOGUE_PATH_UPDATE_STS_MASK;
	int timeout_ms = LOCHNAGAR_BOOT_DELAY_MS * LOCHNAGAR_BOOT_RETRIES;
	unsigned int val = 0;
	int ret;

	FUNC0(&lochnagar->analogue_config_lock);

	if (lochnagar->type != LOCHNAGAR2)
		return 0;

	/*
	 * Toggle the ANALOGUE_PATH_UPDATE bit and wait for the device to
	 * acknowledge that any outstanding changes to the analogue
	 * configuration have been applied.
	 */
	ret = FUNC2(regmap, LOCHNAGAR2_ANALOGUE_PATH_CTRL1, 0);
	if (ret < 0)
		return ret;

	ret = FUNC2(regmap, LOCHNAGAR2_ANALOGUE_PATH_CTRL1,
			   LOCHNAGAR2_ANALOGUE_PATH_UPDATE_MASK);
	if (ret < 0)
		return ret;

	ret = FUNC1(regmap,
				       LOCHNAGAR2_ANALOGUE_PATH_CTRL1, val,
				       (val & done), LOCHNAGAR_CONFIG_POLL_US,
				       timeout_ms * 1000);
	if (ret < 0)
		return ret;

	return 0;
}