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
typedef  int /*<<< orphan*/  u32 ;
struct hl_device {int /*<<< orphan*/  dev; } ;
struct hl_debug_params {int op; } ;

/* Variables and functions */
 int EINVAL ; 
#define  HL_DEBUG_OP_BMON 134 
#define  HL_DEBUG_OP_ETF 133 
#define  HL_DEBUG_OP_ETR 132 
#define  HL_DEBUG_OP_FUNNEL 131 
#define  HL_DEBUG_OP_SPMU 130 
#define  HL_DEBUG_OP_STM 129 
#define  HL_DEBUG_OP_TIMESTAMP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct hl_device*,struct hl_debug_params*) ; 
 int FUNC3 (struct hl_device*,struct hl_debug_params*) ; 
 int FUNC4 (struct hl_device*,struct hl_debug_params*) ; 
 int FUNC5 (struct hl_device*,struct hl_debug_params*) ; 
 int FUNC6 (struct hl_device*,struct hl_debug_params*) ; 
 int FUNC7 (struct hl_device*,struct hl_debug_params*) ; 
 int /*<<< orphan*/  mmPCIE_DBI_DEVICE_ID_VENDOR_ID_REG ; 

int FUNC8(struct hl_device *hdev, void *data)
{
	struct hl_debug_params *params = data;
	u32 val;
	int rc = 0;

	switch (params->op) {
	case HL_DEBUG_OP_STM:
		rc = FUNC7(hdev, params);
		break;
	case HL_DEBUG_OP_ETF:
		rc = FUNC3(hdev, params);
		break;
	case HL_DEBUG_OP_ETR:
		rc = FUNC4(hdev, params);
		break;
	case HL_DEBUG_OP_FUNNEL:
		rc = FUNC5(hdev, params);
		break;
	case HL_DEBUG_OP_BMON:
		rc = FUNC2(hdev, params);
		break;
	case HL_DEBUG_OP_SPMU:
		rc = FUNC6(hdev, params);
		break;
	case HL_DEBUG_OP_TIMESTAMP:
		/* Do nothing as this opcode is deprecated */
		break;

	default:
		FUNC1(hdev->dev, "Unknown coresight id %d\n", params->op);
		return -EINVAL;
	}

	/* Perform read from the device to flush all configuration */
	val = FUNC0(mmPCIE_DBI_DEVICE_ID_VENDOR_ID_REG);

	return rc;
}