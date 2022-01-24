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
struct da9062 {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9062AA_FAULT_LOG ; 
 int DA9062AA_KEY_RESET_MASK ; 
 int DA9062AA_NSHUTDOWN_MASK ; 
 int DA9062AA_POR_MASK ; 
 int DA9062AA_TEMP_CRIT_MASK ; 
 int DA9062AA_TWD_ERROR_MASK ; 
 int DA9062AA_VDD_FAULT_MASK ; 
 int DA9062AA_VDD_START_MASK ; 
 int DA9062AA_WAIT_SHUT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct da9062 *chip)
{
	int ret;
	int fault_log;

	ret = FUNC1(chip->regmap, DA9062AA_FAULT_LOG, &fault_log);
	if (ret < 0)
		return ret;

	if (fault_log) {
		if (fault_log & DA9062AA_TWD_ERROR_MASK)
			FUNC0(chip->dev, "Fault log entry detected: TWD_ERROR\n");
		if (fault_log & DA9062AA_POR_MASK)
			FUNC0(chip->dev, "Fault log entry detected: POR\n");
		if (fault_log & DA9062AA_VDD_FAULT_MASK)
			FUNC0(chip->dev, "Fault log entry detected: VDD_FAULT\n");
		if (fault_log & DA9062AA_VDD_START_MASK)
			FUNC0(chip->dev, "Fault log entry detected: VDD_START\n");
		if (fault_log & DA9062AA_TEMP_CRIT_MASK)
			FUNC0(chip->dev, "Fault log entry detected: TEMP_CRIT\n");
		if (fault_log & DA9062AA_KEY_RESET_MASK)
			FUNC0(chip->dev, "Fault log entry detected: KEY_RESET\n");
		if (fault_log & DA9062AA_NSHUTDOWN_MASK)
			FUNC0(chip->dev, "Fault log entry detected: NSHUTDOWN\n");
		if (fault_log & DA9062AA_WAIT_SHUT_MASK)
			FUNC0(chip->dev, "Fault log entry detected: WAIT_SHUT\n");

		ret = FUNC2(chip->regmap, DA9062AA_FAULT_LOG,
				   fault_log);
	}

	return ret;
}