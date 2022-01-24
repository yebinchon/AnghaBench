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
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 unsigned int F_CMD_EEP ; 
 unsigned int F_CMD_OTP ; 
 unsigned int F_CMD_TOL ; 
 int /*<<< orphan*/ * dpot_attrib_eeprom ; 
 int /*<<< orphan*/ * dpot_attrib_otp ; 
 int /*<<< orphan*/ * dpot_attrib_otp_en ; 
 int /*<<< orphan*/ * dpot_attrib_tolerance ; 
 int /*<<< orphan*/ * dpot_attrib_wipers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct device *dev,
		unsigned int features, unsigned int rdac)
{
	FUNC0(&dev->kobj,
		dpot_attrib_wipers[rdac]);
	if (features & F_CMD_EEP)
		FUNC0(&dev->kobj,
			dpot_attrib_eeprom[rdac]);
	if (features & F_CMD_TOL)
		FUNC0(&dev->kobj,
			dpot_attrib_tolerance[rdac]);
	if (features & F_CMD_OTP) {
		FUNC0(&dev->kobj,
			dpot_attrib_otp_en[rdac]);
		FUNC0(&dev->kobj,
			dpot_attrib_otp[rdac]);
	}
}