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
struct efx_nic {scalar_t__ state; int /*<<< orphan*/  reset_work; int /*<<< orphan*/  reset_pending; int /*<<< orphan*/  net_dev; TYPE_1__* type; } ;
typedef  enum reset_type { ____Placeholder_reset_type } reset_type ;
struct TYPE_2__ {int (* map_reset_reason ) (int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  RESET_TYPE_ALL 136 
#define  RESET_TYPE_DATAPATH 135 
#define  RESET_TYPE_DISABLE 134 
#define  RESET_TYPE_INVISIBLE 133 
#define  RESET_TYPE_MCDI_TIMEOUT 132 
#define  RESET_TYPE_MC_BIST 131 
#define  RESET_TYPE_RECOVER_OR_ALL 130 
#define  RESET_TYPE_RECOVER_OR_DISABLE 129 
#define  RESET_TYPE_WORLD 128 
 scalar_t__ STATE_READY ; 
 scalar_t__ STATE_RECOVERY ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reset_workqueue ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int) ; 

void FUNC8(struct efx_nic *efx, enum reset_type type)
{
	enum reset_type method;

	if (efx->state == STATE_RECOVERY) {
		FUNC3(efx, drv, efx->net_dev,
			  "recovering: skip scheduling %s reset\n",
			  FUNC1(type));
		return;
	}

	switch (type) {
	case RESET_TYPE_INVISIBLE:
	case RESET_TYPE_ALL:
	case RESET_TYPE_RECOVER_OR_ALL:
	case RESET_TYPE_WORLD:
	case RESET_TYPE_DISABLE:
	case RESET_TYPE_RECOVER_OR_DISABLE:
	case RESET_TYPE_DATAPATH:
	case RESET_TYPE_MC_BIST:
	case RESET_TYPE_MCDI_TIMEOUT:
		method = type;
		FUNC3(efx, drv, efx->net_dev, "scheduling %s reset\n",
			  FUNC1(method));
		break;
	default:
		method = efx->type->map_reset_reason(type);
		FUNC3(efx, drv, efx->net_dev,
			  "scheduling %s reset for %s\n",
			  FUNC1(method), FUNC1(type));
		break;
	}

	FUNC5(method, &efx->reset_pending);
	FUNC6(); /* ensure we change reset_pending before checking state */

	/* If we're not READY then just leave the flags set as the cue
	 * to abort probing or reschedule the reset later.
	 */
	if (FUNC0(efx->state) != STATE_READY)
		return;

	/* efx_process_channel() will no longer read events once a
	 * reset is scheduled. So switch back to poll'd MCDI completions. */
	FUNC2(efx);

	FUNC4(reset_workqueue, &efx->reset_work);
}