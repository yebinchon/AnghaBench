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
struct ov5645 {int /*<<< orphan*/  rst_gpio; int /*<<< orphan*/  enable_gpio; int /*<<< orphan*/  supplies; int /*<<< orphan*/  dev; int /*<<< orphan*/  xclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV5645_NUM_SUPPLIES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct ov5645 *ov5645)
{
	int ret;

	ret = FUNC5(OV5645_NUM_SUPPLIES, ov5645->supplies);
	if (ret < 0)
		return ret;

	ret = FUNC0(ov5645->xclk);
	if (ret < 0) {
		FUNC1(ov5645->dev, "clk prepare enable failed\n");
		FUNC4(OV5645_NUM_SUPPLIES, ov5645->supplies);
		return ret;
	}

	FUNC6(5000, 15000);
	FUNC2(ov5645->enable_gpio, 1);

	FUNC6(1000, 2000);
	FUNC2(ov5645->rst_gpio, 0);

	FUNC3(20);

	return 0;
}