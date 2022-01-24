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
struct hl_info_args {int op; } ;
struct hl_fpriv {struct hl_device* hdev; } ;
struct hl_device {int /*<<< orphan*/  in_reset; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOTTY ; 
#define  HL_INFO_DEVICE_STATUS 134 
#define  HL_INFO_DEVICE_UTILIZATION 133 
#define  HL_INFO_DRAM_USAGE 132 
#define  HL_INFO_HW_EVENTS 131 
#define  HL_INFO_HW_EVENTS_AGGREGATE 130 
#define  HL_INFO_HW_IDLE 129 
#define  HL_INFO_HW_IP_INFO 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char*) ; 
 int FUNC3 (struct hl_device*,struct hl_info_args*) ; 
 int FUNC4 (struct hl_device*,struct hl_info_args*) ; 
 int FUNC5 (struct hl_fpriv*,struct hl_info_args*) ; 
 scalar_t__ FUNC6 (struct hl_device*) ; 
 int FUNC7 (struct hl_device*,int,struct hl_info_args*) ; 
 int FUNC8 (struct hl_device*,struct hl_info_args*) ; 
 int FUNC9 (struct hl_device*,struct hl_info_args*) ; 

__attribute__((used)) static int FUNC10(struct hl_fpriv *hpriv, void *data,
				struct device *dev)
{
	struct hl_info_args *args = data;
	struct hl_device *hdev = hpriv->hdev;
	int rc;

	/*
	 * Information is returned for the following opcodes even if the device
	 * is disabled or in reset.
	 */
	switch (args->op) {
	case HL_INFO_HW_IP_INFO:
		return FUNC9(hdev, args);

	case HL_INFO_DEVICE_STATUS:
		return FUNC3(hdev, args);

	default:
		break;
	}

	if (FUNC6(hdev)) {
		FUNC2(dev,
			"Device is %s. Can't execute INFO IOCTL\n",
			FUNC0(&hdev->in_reset) ? "in_reset" : "disabled");
		return -EBUSY;
	}

	switch (args->op) {
	case HL_INFO_HW_EVENTS:
		rc = FUNC7(hdev, false, args);
		break;

	case HL_INFO_DRAM_USAGE:
		rc = FUNC5(hpriv, args);
		break;

	case HL_INFO_HW_IDLE:
		rc = FUNC8(hdev, args);
		break;

	case HL_INFO_DEVICE_UTILIZATION:
		rc = FUNC4(hdev, args);
		break;

	case HL_INFO_HW_EVENTS_AGGREGATE:
		rc = FUNC7(hdev, true, args);
		break;

	default:
		FUNC1(dev, "Invalid request %d\n", args->op);
		rc = -ENOTTY;
		break;
	}

	return rc;
}