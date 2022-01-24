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
struct intel_soc_pmic {int /*<<< orphan*/  regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  bxtwc_reg_addr ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct intel_soc_pmic* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	int ret;
	unsigned int val;
	struct intel_soc_pmic *pmic = FUNC1(dev);

	ret = FUNC2(pmic->regmap, bxtwc_reg_addr, &val);
	if (ret < 0) {
		FUNC0(dev, "Failed to read 0x%lx\n", bxtwc_reg_addr);
		return -EIO;
	}

	return FUNC3(buf, "0x%02x\n", val);
}