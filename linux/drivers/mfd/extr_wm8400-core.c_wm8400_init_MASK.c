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
struct wm8400_platform_data {int (* platform_init ) (int /*<<< orphan*/ ) ;} ;
struct wm8400 {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 unsigned int WM8400_CHIP_REV_MASK ; 
 unsigned int WM8400_CHIP_REV_SHIFT ; 
 int /*<<< orphan*/  WM8400_ID ; 
 int /*<<< orphan*/  WM8400_RESET_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct wm8400*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct wm8400*) ; 

__attribute__((used)) static int FUNC7(struct wm8400 *wm8400,
		       struct wm8400_platform_data *pdata)
{
	unsigned int reg;
	int ret;

	FUNC2(wm8400->dev, wm8400);

	/* Check that this is actually a WM8400 */
	ret = FUNC4(wm8400->regmap, WM8400_RESET_ID, &reg);
	if (ret != 0) {
		FUNC0(wm8400->dev, "Chip ID register read failed\n");
		return -EIO;
	}
	if (reg != 0x6172) {
		FUNC0(wm8400->dev, "Device is not a WM8400, ID is %x\n",
			reg);
		return -ENODEV;
	}

	ret = FUNC4(wm8400->regmap, WM8400_ID, &reg);
	if (ret != 0) {
		FUNC0(wm8400->dev, "ID register read failed: %d\n", ret);
		return ret;
	}
	reg = (reg & WM8400_CHIP_REV_MASK) >> WM8400_CHIP_REV_SHIFT;
	FUNC1(wm8400->dev, "WM8400 revision %x\n", reg);

	ret = FUNC6(wm8400);
	if (ret != 0) {
		FUNC0(wm8400->dev, "Failed to register codec\n");
		return ret;
	}

	if (pdata && pdata->platform_init) {
		ret = pdata->platform_init(wm8400->dev);
		if (ret != 0) {
			FUNC0(wm8400->dev, "Platform init failed: %d\n",
				ret);
			return ret;
		}
	} else
		FUNC3(wm8400->dev, "No platform initialisation supplied\n");

	return 0;
}