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
struct dpot_data {unsigned long rdac_mask; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  otp_en_mask; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int DPOT_ADDR_EEPROM ; 
 int DPOT_ADDR_OTP ; 
 int DPOT_ADDR_OTP_EN ; 
 int DPOT_RDAC_MASK ; 
 size_t EPERM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct dpot_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpot_data*,int,unsigned long) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
			     struct device_attribute *attr,
			     const char *buf, size_t count, u32 reg)
{
	struct dpot_data *data = FUNC1(dev);
	unsigned long value;
	int err;

	if (reg & DPOT_ADDR_OTP_EN) {
		if (FUNC8(buf, "enabled"))
			FUNC7(DPOT_RDAC_MASK & reg, data->otp_en_mask);
		else
			FUNC0(DPOT_RDAC_MASK & reg, data->otp_en_mask);

		return count;
	}

	if ((reg & DPOT_ADDR_OTP) &&
		!FUNC9(DPOT_RDAC_MASK & reg, data->otp_en_mask))
		return -EPERM;

	err = FUNC3(buf, 10, &value);
	if (err)
		return err;

	if (value > data->rdac_mask)
		value = data->rdac_mask;

	FUNC5(&data->update_lock);
	FUNC2(data, reg, value);
	if (reg & DPOT_ADDR_EEPROM)
		FUNC4(26);	/* Sleep while the EEPROM updates */
	else if (reg & DPOT_ADDR_OTP)
		FUNC4(400);	/* Sleep while the OTP updates */
	FUNC6(&data->update_lock);

	return count;
}