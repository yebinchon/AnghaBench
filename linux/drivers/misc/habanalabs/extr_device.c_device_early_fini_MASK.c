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
struct hl_device {TYPE_1__* asic_funcs; int /*<<< orphan*/  cq_wq; int /*<<< orphan*/  eq_wq; int /*<<< orphan*/  hl_chip_info; int /*<<< orphan*/  idle_busy_ts_arr; int /*<<< orphan*/  kernel_cb_mgr; int /*<<< orphan*/  fpriv_list_lock; int /*<<< orphan*/  send_cpu_message_lock; int /*<<< orphan*/  debug_lock; int /*<<< orphan*/  mmu_cache_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* early_fini ) (struct hl_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hl_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hl_device*) ; 

__attribute__((used)) static void FUNC6(struct hl_device *hdev)
{
	FUNC4(&hdev->mmu_cache_lock);
	FUNC4(&hdev->debug_lock);
	FUNC4(&hdev->send_cpu_message_lock);

	FUNC4(&hdev->fpriv_list_lock);

	FUNC2(hdev, &hdev->kernel_cb_mgr);

	FUNC3(hdev->idle_busy_ts_arr);
	FUNC3(hdev->hl_chip_info);

	FUNC0(hdev->eq_wq);
	FUNC0(hdev->cq_wq);

	FUNC1(hdev);

	if (hdev->asic_funcs->early_fini)
		hdev->asic_funcs->early_fini(hdev);
}