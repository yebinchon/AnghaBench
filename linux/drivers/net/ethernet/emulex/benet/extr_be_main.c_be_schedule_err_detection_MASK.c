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
struct be_error_recovery {int /*<<< orphan*/  err_detection_work; } ;
struct be_adapter {int /*<<< orphan*/  flags; struct be_error_recovery error_recovery; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_FLAGS_ERR_DETECTION_SCHEDULED ; 
 int /*<<< orphan*/  be_err_recovery_workq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct be_adapter *adapter, u32 delay)
{
	struct be_error_recovery *err_rec = &adapter->error_recovery;

	if (!be_err_recovery_workq)
		return;

	FUNC1(be_err_recovery_workq, &err_rec->err_detection_work,
			   FUNC0(delay));
	adapter->flags |= BE_FLAGS_ERR_DETECTION_SCHEDULED;
}