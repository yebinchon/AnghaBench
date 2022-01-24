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
struct cxl_afu {int /*<<< orphan*/  slice; TYPE_1__* guest; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int (* afu_reset ) (struct cxl_afu*) ;} ;
struct TYPE_3__ {int previous_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_ERROR_DETECTED_EVENT ; 
 int /*<<< orphan*/  CXL_RESUME_EVENT ; 
 int /*<<< orphan*/  CXL_SLOT_RESET_EVENT ; 
 int EINVAL ; 
#define  H_STATE_DISABLE 131 
#define  H_STATE_NORMAL 130 
#define  H_STATE_PERM_UNAVAILABLE 129 
#define  H_STATE_TEMP_UNAVAILABLE 128 
 int FUNC0 (struct cxl_afu*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl_afu*) ; 
 TYPE_2__* cxl_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  pci_channel_io_frozen ; 
 int /*<<< orphan*/  pci_channel_io_normal ; 
 int /*<<< orphan*/  pci_channel_io_perm_failure ; 
 int /*<<< orphan*/  FUNC3 (struct cxl_afu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct cxl_afu*) ; 

__attribute__((used)) static int FUNC7(struct cxl_afu *afu)
{
	int rc, cur_state;

	rc = FUNC0(afu, &cur_state);
	if (rc)
		return rc;

	if (afu->guest->previous_state == cur_state)
		return 0;

	FUNC4("AFU(%d) update state to %#x\n", afu->slice, cur_state);

	switch (cur_state) {
	case H_STATE_NORMAL:
		afu->guest->previous_state = cur_state;
		break;

	case H_STATE_DISABLE:
		FUNC3(afu, CXL_ERROR_DETECTED_EVENT,
				pci_channel_io_frozen);

		FUNC1(afu);
		if ((rc = cxl_ops->afu_reset(afu)))
			FUNC4("reset hcall failed %d\n", rc);

		rc = FUNC0(afu, &cur_state);
		if (!rc && cur_state == H_STATE_NORMAL) {
			FUNC3(afu, CXL_SLOT_RESET_EVENT,
					pci_channel_io_normal);
			FUNC3(afu, CXL_RESUME_EVENT, 0);
		}
		afu->guest->previous_state = 0;
		break;

	case H_STATE_TEMP_UNAVAILABLE:
		afu->guest->previous_state = cur_state;
		break;

	case H_STATE_PERM_UNAVAILABLE:
		FUNC2(&afu->dev, "AFU is in permanent error state\n");
		FUNC3(afu, CXL_ERROR_DETECTED_EVENT,
				pci_channel_io_perm_failure);
		afu->guest->previous_state = cur_state;
		break;

	default:
		FUNC5("Unexpected AFU(%d) error state: %#x\n",
		       afu->slice, cur_state);
		return -EINVAL;
	}

	return rc;
}