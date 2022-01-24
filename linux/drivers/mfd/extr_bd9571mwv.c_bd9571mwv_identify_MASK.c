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
struct bd9571mwv {int /*<<< orphan*/  regmap; struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD9571MWV_PRODUCT_CODE ; 
 unsigned int BD9571MWV_PRODUCT_CODE_VAL ; 
 int /*<<< orphan*/  BD9571MWV_PRODUCT_REVISION ; 
 int /*<<< orphan*/  BD9571MWV_VENDOR_CODE ; 
 unsigned int BD9571MWV_VENDOR_CODE_VAL ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct bd9571mwv *bd)
{
	struct device *dev = bd->dev;
	unsigned int value;
	int ret;

	ret = FUNC2(bd->regmap, BD9571MWV_VENDOR_CODE, &value);
	if (ret) {
		FUNC0(dev, "Failed to read vendor code register (ret=%i)\n",
			ret);
		return ret;
	}

	if (value != BD9571MWV_VENDOR_CODE_VAL) {
		FUNC0(dev, "Invalid vendor code ID %02x (expected %02x)\n",
			value, BD9571MWV_VENDOR_CODE_VAL);
		return -EINVAL;
	}

	ret = FUNC2(bd->regmap, BD9571MWV_PRODUCT_CODE, &value);
	if (ret) {
		FUNC0(dev, "Failed to read product code register (ret=%i)\n",
			ret);
		return ret;
	}

	if (value != BD9571MWV_PRODUCT_CODE_VAL) {
		FUNC0(dev, "Invalid product code ID %02x (expected %02x)\n",
			value, BD9571MWV_PRODUCT_CODE_VAL);
		return -EINVAL;
	}

	ret = FUNC2(bd->regmap, BD9571MWV_PRODUCT_REVISION, &value);
	if (ret) {
		FUNC0(dev, "Failed to read revision register (ret=%i)\n",
			ret);
		return ret;
	}

	FUNC1(dev, "Device: BD9571MWV rev. %d\n", value & 0xff);

	return 0;
}