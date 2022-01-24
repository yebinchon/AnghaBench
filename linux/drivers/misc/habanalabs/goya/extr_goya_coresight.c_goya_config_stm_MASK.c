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
struct hl_device {int /*<<< orphan*/  dev; } ;
struct hl_debug_params_stm {int id; int frequency; int /*<<< orphan*/  sp_mask; int /*<<< orphan*/  he_mask; } ;
struct hl_debug_params {size_t reg_idx; struct hl_debug_params_stm* input; scalar_t__ enable; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__*) ; 
 scalar_t__ CFG_BASE ; 
 int CORESIGHT_UNLOCK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__* debug_stm_regs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct hl_device*,scalar_t__,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hl_device *hdev,
		struct hl_debug_params *params)
{
	struct hl_debug_params_stm *input;
	u64 base_reg;
	int rc;

	if (params->reg_idx >= FUNC0(debug_stm_regs)) {
		FUNC2(hdev->dev, "Invalid register index in STM\n");
		return -EINVAL;
	}

	base_reg = debug_stm_regs[params->reg_idx] - CFG_BASE;

	FUNC1(base_reg + 0xFB0, CORESIGHT_UNLOCK);

	if (params->enable) {
		input = params->input;

		if (!input)
			return -EINVAL;

		FUNC1(base_reg + 0xE80, 0x80004);
		FUNC1(base_reg + 0xD64, 7);
		FUNC1(base_reg + 0xD60, 0);
		FUNC1(base_reg + 0xD00, FUNC4(input->he_mask));
		FUNC1(base_reg + 0xD20, FUNC4(input->sp_mask));
		FUNC1(base_reg + 0xD60, 1);
		FUNC1(base_reg + 0xD00, FUNC5(input->he_mask));
		FUNC1(base_reg + 0xD20, FUNC5(input->sp_mask));
		FUNC1(base_reg + 0xE70, 0x10);
		FUNC1(base_reg + 0xE60, 0);
		FUNC1(base_reg + 0xE64, 0x420000);
		FUNC1(base_reg + 0xE00, 0xFFFFFFFF);
		FUNC1(base_reg + 0xE20, 0xFFFFFFFF);
		FUNC1(base_reg + 0xEF4, input->id);
		FUNC1(base_reg + 0xDF4, 0x80);
		FUNC1(base_reg + 0xE8C, input->frequency);
		FUNC1(base_reg + 0xE90, 0x7FF);
		FUNC1(base_reg + 0xE80, 0x7 | (input->id << 16));
	} else {
		FUNC1(base_reg + 0xE80, 4);
		FUNC1(base_reg + 0xD64, 0);
		FUNC1(base_reg + 0xD60, 1);
		FUNC1(base_reg + 0xD00, 0);
		FUNC1(base_reg + 0xD20, 0);
		FUNC1(base_reg + 0xD60, 0);
		FUNC1(base_reg + 0xE20, 0);
		FUNC1(base_reg + 0xE00, 0);
		FUNC1(base_reg + 0xDF4, 0x80);
		FUNC1(base_reg + 0xE70, 0);
		FUNC1(base_reg + 0xE60, 0);
		FUNC1(base_reg + 0xE64, 0);
		FUNC1(base_reg + 0xE8C, 0);

		rc = FUNC3(hdev, base_reg + 0xE80, 23, false);
		if (rc) {
			FUNC2(hdev->dev,
				"Failed to disable STM on timeout, error %d\n",
				rc);
			return rc;
		}

		FUNC1(base_reg + 0xE80, 4);
	}

	return 0;
}