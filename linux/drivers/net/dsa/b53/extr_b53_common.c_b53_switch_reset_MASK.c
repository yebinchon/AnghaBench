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
struct b53_device {scalar_t__ chip_id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B53_CTRL_PAGE ; 
 int /*<<< orphan*/  B53_SOFTRESET ; 
 int /*<<< orphan*/  B53_SWITCH_MODE ; 
 scalar_t__ BCM583XX_DEVICE_ID ; 
 scalar_t__ BCM58XX_DEVICE_ID ; 
 int EINVAL ; 
 int EN_CH_RST ; 
 int EN_SW_RST ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FAST_AGE_STATIC ; 
 int SM_SW_FWD_EN ; 
 int SM_SW_FWD_MODE ; 
 int SW_RST ; 
 int /*<<< orphan*/  FUNC0 (struct b53_device*) ; 
 int FUNC1 (struct b53_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct b53_device *dev)
{
	unsigned int timeout = 1000;
	u8 mgmt, reg;

	FUNC3(dev);

	if (FUNC6(dev)) {
		FUNC4(dev, B53_CTRL_PAGE, B53_SOFTRESET, 0x83);
		FUNC4(dev, B53_CTRL_PAGE, B53_SOFTRESET, 0x00);
	}

	/* This is specific to 58xx devices here, do not use is58xx() which
	 * covers the larger Starfigther 2 family, including 7445/7278 which
	 * still use this driver as a library and need to perform the reset
	 * earlier.
	 */
	if (dev->chip_id == BCM58XX_DEVICE_ID ||
	    dev->chip_id == BCM583XX_DEVICE_ID) {
		FUNC2(dev, B53_CTRL_PAGE, B53_SOFTRESET, &reg);
		reg |= SW_RST | EN_SW_RST | EN_CH_RST;
		FUNC4(dev, B53_CTRL_PAGE, B53_SOFTRESET, reg);

		do {
			FUNC2(dev, B53_CTRL_PAGE, B53_SOFTRESET, &reg);
			if (!(reg & SW_RST))
				break;

			FUNC7(1000, 2000);
		} while (timeout-- > 0);

		if (timeout == 0)
			return -ETIMEDOUT;
	}

	FUNC2(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, &mgmt);

	if (!(mgmt & SM_SW_FWD_EN)) {
		mgmt &= ~SM_SW_FWD_MODE;
		mgmt |= SM_SW_FWD_EN;

		FUNC4(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, mgmt);
		FUNC2(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, &mgmt);

		if (!(mgmt & SM_SW_FWD_EN)) {
			FUNC5(dev->dev, "Failed to enable switch!\n");
			return -EINVAL;
		}
	}

	FUNC0(dev);

	return FUNC1(dev, FAST_AGE_STATIC);
}