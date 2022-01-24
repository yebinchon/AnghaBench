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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct hl_device {int /*<<< orphan*/  dev; } ;
struct hl_debug_params_etf {int sink_mode; } ;
struct hl_debug_params {size_t reg_idx; struct hl_debug_params_etf* input; scalar_t__ enable; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__*) ; 
 scalar_t__ CFG_BASE ; 
 int CORESIGHT_UNLOCK ; 
 int EINVAL ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__* debug_etf_regs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (struct hl_device*,scalar_t__,int,int) ; 

__attribute__((used)) static int FUNC5(struct hl_device *hdev,
		struct hl_debug_params *params)
{
	struct hl_debug_params_etf *input;
	u64 base_reg;
	u32 val;
	int rc;

	if (params->reg_idx >= FUNC0(debug_etf_regs)) {
		FUNC3(hdev->dev, "Invalid register index in ETF\n");
		return -EINVAL;
	}

	base_reg = debug_etf_regs[params->reg_idx] - CFG_BASE;

	FUNC2(base_reg + 0xFB0, CORESIGHT_UNLOCK);

	val = FUNC1(base_reg + 0x304);
	val |= 0x1000;
	FUNC2(base_reg + 0x304, val);
	val |= 0x40;
	FUNC2(base_reg + 0x304, val);

	rc = FUNC4(hdev, base_reg + 0x304, 6, false);
	if (rc) {
		FUNC3(hdev->dev,
			"Failed to %s ETF on timeout, error %d\n",
				params->enable ? "enable" : "disable", rc);
		return rc;
	}

	rc = FUNC4(hdev, base_reg + 0xC, 2, true);
	if (rc) {
		FUNC3(hdev->dev,
			"Failed to %s ETF on timeout, error %d\n",
				params->enable ? "enable" : "disable", rc);
		return rc;
	}

	FUNC2(base_reg + 0x20, 0);

	if (params->enable) {
		input = params->input;

		if (!input)
			return -EINVAL;

		FUNC2(base_reg + 0x34, 0x3FFC);
		FUNC2(base_reg + 0x28, input->sink_mode);
		FUNC2(base_reg + 0x304, 0x4001);
		FUNC2(base_reg + 0x308, 0xA);
		FUNC2(base_reg + 0x20, 1);
	} else {
		FUNC2(base_reg + 0x34, 0);
		FUNC2(base_reg + 0x28, 0);
		FUNC2(base_reg + 0x304, 0);
	}

	return 0;
}