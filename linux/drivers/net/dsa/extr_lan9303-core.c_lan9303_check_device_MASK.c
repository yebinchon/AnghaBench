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
struct lan9303 {int /*<<< orphan*/  dev; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ENODEV ; 
 int LAN9303_CHIP_ID ; 
 int /*<<< orphan*/  LAN9303_CHIP_REV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct lan9303*) ; 
 int FUNC5 (struct lan9303*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC7(struct lan9303 *chip)
{
	int ret;
	u32 reg;

	ret = FUNC6(chip->regmap, LAN9303_CHIP_REV, &reg);
	if (ret) {
		FUNC1(chip->dev, "failed to read chip revision register: %d\n",
			ret);
		if (!chip->reset_gpio) {
			FUNC0(chip->dev,
				"hint: maybe failed due to missing reset GPIO\n");
		}
		return ret;
	}

	if ((reg >> 16) != LAN9303_CHIP_ID) {
		FUNC1(chip->dev, "expecting LAN9303 chip, but found: %X\n",
			reg >> 16);
		return -ENODEV;
	}

	/* The default state of the LAN9303 device is to forward packets between
	 * all ports (if not configured differently by an external EEPROM).
	 * The initial state of a DSA device must be forwarding packets only
	 * between the external and the internal ports and no forwarding
	 * between the external ports. In preparation we stop packet handling
	 * at all for now until the LAN9303 device is re-programmed accordingly.
	 */
	ret = FUNC5(chip);
	if (ret)
		FUNC3(chip->dev, "failed to disable switching %d\n", ret);

	FUNC2(chip->dev, "Found LAN9303 rev. %u\n", reg & 0xffff);

	ret = FUNC4(chip);
	if (ret) {
		FUNC1(chip->dev,
			"failed to discover phy bootstrap setup: %d\n", ret);
		return ret;
	}

	return 0;
}