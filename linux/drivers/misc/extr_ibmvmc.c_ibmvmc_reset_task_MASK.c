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
struct crq_server_adapter {int /*<<< orphan*/  work_task; int /*<<< orphan*/  dev; int /*<<< orphan*/  reset_wait_queue; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int H_RESOURCE ; 
 int H_SUCCESS ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__ ibmvmc ; 
 int FUNC3 (struct crq_server_adapter*) ; 
 scalar_t__ FUNC4 (struct crq_server_adapter*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ ibmvmc_state_crqinit ; 
 scalar_t__ ibmvmc_state_failed ; 
 scalar_t__ ibmvmc_state_sched_reset ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(void *data)
{
	struct crq_server_adapter *adapter = data;
	int rc;

	FUNC6(current, -20);

	while (!FUNC5()) {
		FUNC11(adapter->reset_wait_queue,
			(ibmvmc.state == ibmvmc_state_sched_reset) ||
			FUNC5());

		if (FUNC5())
			break;

		FUNC0(adapter->dev, "CRQ resetting in process context");
		FUNC7(&adapter->work_task);

		rc = FUNC3(adapter);

		if (rc != H_SUCCESS && rc != H_RESOURCE) {
			FUNC1(adapter->dev, "Error initializing CRQ.  rc = 0x%x\n",
				rc);
			ibmvmc.state = ibmvmc_state_failed;
		} else {
			ibmvmc.state = ibmvmc_state_crqinit;

			if (FUNC4(adapter, 0xC001000000000000LL, 0)
			    != 0 && rc != H_RESOURCE)
				FUNC2(adapter->dev, "Failed to send initialize CRQ message\n");
		}

		FUNC10(FUNC9(adapter->dev));
		FUNC8(&adapter->work_task);
	}

	return 0;
}