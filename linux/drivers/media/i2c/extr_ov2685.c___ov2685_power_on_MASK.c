#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ov2685 {int /*<<< orphan*/  xvclk; int /*<<< orphan*/  supplies; TYPE_1__* cur_mode; TYPE_2__* client; int /*<<< orphan*/  reset_gpio; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  reg_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV2685_NUM_SUPPLIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct ov2685 *ov2685)
{
	int ret;
	u32 delay_us;
	struct device *dev = &ov2685->client->dev;

	ret = FUNC1(ov2685->xvclk);
	if (ret < 0) {
		FUNC2(dev, "Failed to enable xvclk\n");
		return ret;
	}

	FUNC3(ov2685->reset_gpio, 1);

	ret = FUNC7(OV2685_NUM_SUPPLIES, ov2685->supplies);
	if (ret < 0) {
		FUNC2(dev, "Failed to enable regulators\n");
		goto disable_clk;
	}

	/* The minimum delay between power supplies and reset rising can be 0 */
	FUNC3(ov2685->reset_gpio, 0);
	/* 8192 xvclk cycles prior to the first SCCB transaction */
	delay_us = FUNC4(8192);
	FUNC8(delay_us, delay_us * 2);

	/* HACK: ov2685 would output messy data after reset(R0103),
	 * writing register before .s_stream() as a workaround
	 */
	ret = FUNC5(ov2685->client, ov2685->cur_mode->reg_list);
	if (ret)
		goto disable_supplies;

	return 0;

disable_supplies:
	FUNC6(OV2685_NUM_SUPPLIES, ov2685->supplies);
disable_clk:
	FUNC0(ov2685->xvclk);

	return ret;
}