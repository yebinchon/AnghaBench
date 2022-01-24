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
typedef  int /*<<< orphan*/  work_func_t ;
struct qlcnic_adapter {int /*<<< orphan*/  fw_work; int /*<<< orphan*/  qlcnic_wq; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __QLCNIC_AER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct qlcnic_adapter *adapter,
			  work_func_t func, int delay)
{
	if (FUNC3(__QLCNIC_AER, &adapter->state))
		return;

	FUNC0(&adapter->fw_work, func);
	FUNC1(adapter->qlcnic_wq, &adapter->fw_work,
			   FUNC2(delay));
}