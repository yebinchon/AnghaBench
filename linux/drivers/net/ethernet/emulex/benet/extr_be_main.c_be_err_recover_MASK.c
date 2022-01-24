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
struct TYPE_2__ {int /*<<< orphan*/  recovery_supported; } ;
struct be_adapter {int priv_flags; int /*<<< orphan*/  flags; TYPE_1__ error_recovery; } ;

/* Variables and functions */
 int BE_DISABLE_TPE_RECOVERY ; 
 int /*<<< orphan*/  BE_FLAGS_TRY_RECOVERY ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int FUNC1 (struct be_adapter*) ; 
 int FUNC2 (struct be_adapter*) ; 
 int FUNC3 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC5(struct be_adapter *adapter)
{
	int status;

	if (!FUNC4(adapter)) {
		if (!adapter->error_recovery.recovery_supported ||
		    adapter->priv_flags & BE_DISABLE_TPE_RECOVERY)
			return -EIO;
		status = FUNC3(adapter);
		if (status)
			goto err;
	}

	/* Wait for adapter to reach quiescent state before
	 * destroying queues
	 */
	status = FUNC1(adapter);
	if (status)
		goto err;

	adapter->flags |= BE_FLAGS_TRY_RECOVERY;

	FUNC0(adapter);

	status = FUNC2(adapter);
	if (status)
		goto err;

	adapter->flags &= ~BE_FLAGS_TRY_RECOVERY;

err:
	return status;
}