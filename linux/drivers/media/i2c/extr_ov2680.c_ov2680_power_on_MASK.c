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
struct ov2680_dev {int is_enabled; int /*<<< orphan*/  xvclk; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  supplies; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV2680_NUM_SUPPLIES ; 
 int /*<<< orphan*/  OV2680_REG_SOFT_RESET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ov2680_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ov2680_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct ov2680_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct ov2680_dev*) ; 
 struct device* FUNC6 (struct ov2680_dev*) ; 
 int FUNC7 (struct ov2680_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct ov2680_dev *sensor)
{
	struct device *dev = FUNC6(sensor);
	int ret;

	if (sensor->is_enabled)
		return 0;

	ret = FUNC8(OV2680_NUM_SUPPLIES, sensor->supplies);
	if (ret < 0) {
		FUNC1(dev, "failed to enable regulators: %d\n", ret);
		return ret;
	}

	if (!sensor->reset_gpio) {
		ret = FUNC7(sensor, OV2680_REG_SOFT_RESET, 0x01);
		if (ret != 0) {
			FUNC1(dev, "sensor soft reset failed\n");
			return ret;
		}
		FUNC9(1000, 2000);
	} else {
		FUNC2(sensor);
		FUNC3(sensor);
	}

	ret = FUNC0(sensor->xvclk);
	if (ret < 0)
		return ret;

	sensor->is_enabled = true;

	/* Set clock lane into LP-11 state */
	FUNC5(sensor);
	FUNC9(1000, 2000);
	FUNC4(sensor);

	return 0;
}