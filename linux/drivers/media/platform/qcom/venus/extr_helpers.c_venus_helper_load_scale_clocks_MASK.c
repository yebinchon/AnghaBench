#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct venus_core {struct clk* core1_clk; struct clk* core0_clk; TYPE_1__* res; struct device* dev; struct clk** clks; } ;
struct freq_tbl {unsigned long freq; scalar_t__ load; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {unsigned int freq_tbl_size; scalar_t__ max_load; struct freq_tbl* freq_tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIDC_SESSION_TYPE_DEC ; 
 int /*<<< orphan*/  VIDC_SESSION_TYPE_ENC ; 
 int FUNC0 (struct clk*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (struct venus_core*,int /*<<< orphan*/ ) ; 

int FUNC4(struct venus_core *core)
{
	const struct freq_tbl *table = core->res->freq_tbl;
	unsigned int num_rows = core->res->freq_tbl_size;
	unsigned long freq = table[0].freq;
	struct clk *clk = core->clks[0];
	struct device *dev = core->dev;
	u32 mbs_per_sec;
	unsigned int i;
	int ret;

	mbs_per_sec = FUNC3(core, VIDC_SESSION_TYPE_ENC) +
		      FUNC3(core, VIDC_SESSION_TYPE_DEC);

	if (mbs_per_sec > core->res->max_load)
		FUNC2(dev, "HW is overloaded, needed: %d max: %d\n",
			 mbs_per_sec, core->res->max_load);

	if (!mbs_per_sec && num_rows > 1) {
		freq = table[num_rows - 1].freq;
		goto set_freq;
	}

	for (i = 0; i < num_rows; i++) {
		if (mbs_per_sec > table[i].load)
			break;
		freq = table[i].freq;
	}

set_freq:

	ret = FUNC0(clk, freq);
	if (ret)
		goto err;

	ret = FUNC0(core->core0_clk, freq);
	if (ret)
		goto err;

	ret = FUNC0(core->core1_clk, freq);
	if (ret)
		goto err;

	return 0;

err:
	FUNC1(dev, "failed to set clock rate %lu (%d)\n", freq, ret);
	return ret;
}