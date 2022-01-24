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
typedef  int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ab8500 {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_SYS_CTRL1_BLOCK ; 
 int /*<<< orphan*/  AB8500_TURN_ON_STATUS ; 
 struct ab8500* FUNC0 (struct device*) ; 
 int FUNC1 (struct ab8500*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (struct ab8500*) ; 
 int /*<<< orphan*/  on_stat_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,char*,int) ; 
 int turn_on_stat_mask ; 
 int turn_on_stat_set ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	int ret;
	u8 value;
	struct ab8500 *ab8500;

	ab8500 = FUNC0(dev);
	ret = FUNC1(ab8500, AB8500_SYS_CTRL1_BLOCK,
		AB8500_TURN_ON_STATUS, &value);
	if (ret < 0)
		return ret;

	/*
	 * In L9540, turn_on_status register is not updated correctly if
	 * the device is rebooted with AC/USB charger connected. Due to
	 * this, the device boots android instead of entering into charge
	 * only mode. Read the AC/USB status register to detect the charger
	 * presence and update the turn on status manually.
	 */
	if (FUNC2(ab8500)) {
		FUNC3(&on_stat_lock);
		value = (value & turn_on_stat_mask) | turn_on_stat_set;
		FUNC4(&on_stat_lock);
	}

	return FUNC5(buf, "%#x\n", value);
}