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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int RC5T583_DS_DC0 ; 
 int /*<<< orphan*/  RICOH_ONOFFSEL_REG ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
	int id, int ext_pwr)
{
	int ret;

	if (id != RC5T583_DS_DC0) {
		FUNC1(dev, "PWRREQ2 is invalid control for rail %d\n", id);
		return -EINVAL;
	}

	ret = FUNC2(dev, RICOH_ONOFFSEL_REG, FUNC0(2));
	if (ret < 0)
		FUNC1(dev, "Error in updating the ONOFFSEL 0x10 register\n");
	return ret;
}