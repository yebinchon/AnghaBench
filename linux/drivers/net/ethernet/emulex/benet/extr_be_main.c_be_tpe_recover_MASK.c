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
typedef  int u32 ;
struct be_error_recovery {int recovery_state; void* resched_delay; void* ue_to_reset_time; void* ue_to_poll_time; } ;
struct be_adapter {TYPE_1__* pdev; int /*<<< orphan*/  pf_num; struct be_error_recovery error_recovery; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EIO ; 
#define  ERR_RECOVERY_ST_DETECT 131 
#define  ERR_RECOVERY_ST_NONE 130 
#define  ERR_RECOVERY_ST_PRE_POLL 129 
 int ERR_RECOVERY_ST_REINIT ; 
#define  ERR_RECOVERY_ST_RESET 128 
 void* ERR_RECOVERY_UE_DETECT_DURATION ; 
 int POST_STAGE_RECOVERABLE_ERR ; 
 int FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int FUNC4(struct be_adapter *adapter)
{
	struct be_error_recovery *err_rec = &adapter->error_recovery;
	int status = -EAGAIN;
	u32 val;

	switch (err_rec->recovery_state) {
	case ERR_RECOVERY_ST_NONE:
		err_rec->recovery_state = ERR_RECOVERY_ST_DETECT;
		err_rec->resched_delay = ERR_RECOVERY_UE_DETECT_DURATION;
		break;

	case ERR_RECOVERY_ST_DETECT:
		val = FUNC0(adapter);
		if ((val & POST_STAGE_RECOVERABLE_ERR) !=
		    POST_STAGE_RECOVERABLE_ERR) {
			FUNC3(&adapter->pdev->dev,
				"Unrecoverable HW error detected: 0x%x\n", val);
			status = -EINVAL;
			err_rec->resched_delay = 0;
			break;
		}

		FUNC3(&adapter->pdev->dev, "Recoverable HW error detected\n");

		/* Only PF0 initiates Chip Soft Reset. But PF0 must wait UE2SR
		 * milliseconds before it checks for final error status in
		 * SLIPORT_SEMAPHORE to determine if recovery criteria is met.
		 * If it does, then PF0 initiates a Soft Reset.
		 */
		if (adapter->pf_num == 0) {
			err_rec->recovery_state = ERR_RECOVERY_ST_RESET;
			err_rec->resched_delay = err_rec->ue_to_reset_time -
					ERR_RECOVERY_UE_DETECT_DURATION;
			break;
		}

		err_rec->recovery_state = ERR_RECOVERY_ST_PRE_POLL;
		err_rec->resched_delay = err_rec->ue_to_poll_time -
					ERR_RECOVERY_UE_DETECT_DURATION;
		break;

	case ERR_RECOVERY_ST_RESET:
		if (!FUNC1(adapter)) {
			FUNC3(&adapter->pdev->dev,
				"Failed to meet recovery criteria\n");
			status = -EIO;
			err_rec->resched_delay = 0;
			break;
		}
		FUNC2(adapter);
		err_rec->recovery_state = ERR_RECOVERY_ST_PRE_POLL;
		err_rec->resched_delay = err_rec->ue_to_poll_time -
					err_rec->ue_to_reset_time;
		break;

	case ERR_RECOVERY_ST_PRE_POLL:
		err_rec->recovery_state = ERR_RECOVERY_ST_REINIT;
		err_rec->resched_delay = 0;
		status = 0;			/* done */
		break;

	default:
		status = -EINVAL;
		err_rec->resched_delay = 0;
		break;
	}

	return status;
}