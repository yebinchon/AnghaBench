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
typedef  int u64 ;
typedef  int u32 ;
struct hl_device {int /*<<< orphan*/  dev; } ;
struct hl_debug_params_etr {int buffer_size; int sink_mode; int /*<<< orphan*/  buffer_address; } ;
struct hl_debug_params {int output_size; scalar_t__ output; struct hl_debug_params_etr* input; scalar_t__ enable; } ;

/* Variables and functions */
 int CFG_BASE ; 
 int CORESIGHT_UNLOCK ; 
 int EINVAL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct hl_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hl_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int mmPSOC_ETR_BASE ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hl_device *hdev,
		struct hl_debug_params *params)
{
	struct hl_debug_params_etr *input;
	u64 base_reg = mmPSOC_ETR_BASE - CFG_BASE;
	u32 val;
	int rc;

	FUNC1(base_reg + 0xFB0, CORESIGHT_UNLOCK);

	val = FUNC0(base_reg + 0x304);
	val |= 0x1000;
	FUNC1(base_reg + 0x304, val);
	val |= 0x40;
	FUNC1(base_reg + 0x304, val);

	rc = FUNC3(hdev, base_reg + 0x304, 6, false);
	if (rc) {
		FUNC2(hdev->dev, "Failed to %s ETR on timeout, error %d\n",
				params->enable ? "enable" : "disable", rc);
		return rc;
	}

	rc = FUNC3(hdev, base_reg + 0xC, 2, true);
	if (rc) {
		FUNC2(hdev->dev, "Failed to %s ETR on timeout, error %d\n",
				params->enable ? "enable" : "disable", rc);
		return rc;
	}

	FUNC1(base_reg + 0x20, 0);

	if (params->enable) {
		input = params->input;

		if (!input)
			return -EINVAL;

		if (input->buffer_size == 0) {
			FUNC2(hdev->dev,
				"ETR buffer size should be bigger than 0\n");
			return -EINVAL;
		}

		if (!FUNC4(hdev,
				input->buffer_address, input->buffer_size)) {
			FUNC2(hdev->dev, "buffer address is not valid\n");
			return -EINVAL;
		}

		FUNC1(base_reg + 0x34, 0x3FFC);
		FUNC1(base_reg + 0x4, input->buffer_size);
		FUNC1(base_reg + 0x28, input->sink_mode);
		FUNC1(base_reg + 0x110, 0x700);
		FUNC1(base_reg + 0x118,
				FUNC5(input->buffer_address));
		FUNC1(base_reg + 0x11C,
				FUNC6(input->buffer_address));
		FUNC1(base_reg + 0x304, 3);
		FUNC1(base_reg + 0x308, 0xA);
		FUNC1(base_reg + 0x20, 1);
	} else {
		FUNC1(base_reg + 0x34, 0);
		FUNC1(base_reg + 0x4, 0x400);
		FUNC1(base_reg + 0x118, 0);
		FUNC1(base_reg + 0x11C, 0);
		FUNC1(base_reg + 0x308, 0);
		FUNC1(base_reg + 0x28, 0);
		FUNC1(base_reg + 0x304, 0);

		if (params->output_size >= sizeof(u64)) {
			u32 rwp, rwphi;

			/*
			 * The trace buffer address is 40 bits wide. The end of
			 * the buffer is set in the RWP register (lower 32
			 * bits), and in the RWPHI register (upper 8 bits).
			 */
			rwp = FUNC0(base_reg + 0x18);
			rwphi = FUNC0(base_reg + 0x3c) & 0xff;
			*(u64 *) params->output = ((u64) rwphi << 32) | rwp;
		}
	}

	return 0;
}