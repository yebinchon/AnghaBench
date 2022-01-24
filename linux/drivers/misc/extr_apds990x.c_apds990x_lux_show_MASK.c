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
typedef  int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct apds990x_chip {int lux; int lux_calib; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lux_wait_fresh_res; int /*<<< orphan*/  wait; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int APDS990X_LUX_OUTPUT_SCALE ; 
 int APDS_CALIB_SCALER ; 
 int APDS_RANGE ; 
 int /*<<< orphan*/  APDS_TIMEOUT ; 
 int /*<<< orphan*/  EIO ; 
 struct apds990x_chip* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int,int) ; 
 long FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	struct apds990x_chip *chip = FUNC0(dev);
	ssize_t ret;
	u32 result;
	long timeout;

	if (FUNC4(dev))
		return -EIO;

	timeout = FUNC6(chip->wait,
						!chip->lux_wait_fresh_res,
						FUNC1(APDS_TIMEOUT));
	if (!timeout)
		return -EIO;

	FUNC2(&chip->mutex);
	result = (chip->lux * chip->lux_calib) / APDS_CALIB_SCALER;
	if (result > (APDS_RANGE * APDS990X_LUX_OUTPUT_SCALE))
		result = APDS_RANGE * APDS990X_LUX_OUTPUT_SCALE;

	ret = FUNC5(buf, "%d.%d\n",
		result / APDS990X_LUX_OUTPUT_SCALE,
		result % APDS990X_LUX_OUTPUT_SCALE);
	FUNC3(&chip->mutex);
	return ret;
}