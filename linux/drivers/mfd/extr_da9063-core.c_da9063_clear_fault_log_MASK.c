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
struct da9063 {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int DA9063_KEY_RESET ; 
 int DA9063_NSHUTDOWN ; 
 int DA9063_POR ; 
 int /*<<< orphan*/  DA9063_REG_FAULT_LOG ; 
 int DA9063_TEMP_CRIT ; 
 int DA9063_TWD_ERROR ; 
 int DA9063_VDD_FAULT ; 
 int DA9063_VDD_START ; 
 int DA9063_WAIT_SHUT ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct da9063 *da9063)
{
	int ret = 0;
	int fault_log = 0;

	ret = FUNC2(da9063->regmap, DA9063_REG_FAULT_LOG, &fault_log);
	if (ret < 0) {
		FUNC1(da9063->dev, "Cannot read FAULT_LOG.\n");
		return -EIO;
	}

	if (fault_log) {
		if (fault_log & DA9063_TWD_ERROR)
			FUNC0(da9063->dev,
				"Fault log entry detected: DA9063_TWD_ERROR\n");
		if (fault_log & DA9063_POR)
			FUNC0(da9063->dev,
				"Fault log entry detected: DA9063_POR\n");
		if (fault_log & DA9063_VDD_FAULT)
			FUNC0(da9063->dev,
				"Fault log entry detected: DA9063_VDD_FAULT\n");
		if (fault_log & DA9063_VDD_START)
			FUNC0(da9063->dev,
				"Fault log entry detected: DA9063_VDD_START\n");
		if (fault_log & DA9063_TEMP_CRIT)
			FUNC0(da9063->dev,
				"Fault log entry detected: DA9063_TEMP_CRIT\n");
		if (fault_log & DA9063_KEY_RESET)
			FUNC0(da9063->dev,
				"Fault log entry detected: DA9063_KEY_RESET\n");
		if (fault_log & DA9063_NSHUTDOWN)
			FUNC0(da9063->dev,
				"Fault log entry detected: DA9063_NSHUTDOWN\n");
		if (fault_log & DA9063_WAIT_SHUT)
			FUNC0(da9063->dev,
				"Fault log entry detected: DA9063_WAIT_SHUT\n");
	}

	ret = FUNC3(da9063->regmap,
			   DA9063_REG_FAULT_LOG,
			   fault_log);
	if (ret < 0)
		FUNC1(da9063->dev,
			"Cannot reset FAULT_LOG values %d\n", ret);

	return ret;
}