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
struct qlcnic_adapter {int /*<<< orphan*/  mbx_poll_work; int /*<<< orphan*/  qlcnic_wq; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __QLCNIC_MBX_POLL_ENABLE ; 
 int /*<<< orphan*/  qlcnic_83xx_mbx_poll_work ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct qlcnic_adapter *adapter)
{
	if (FUNC2(__QLCNIC_MBX_POLL_ENABLE, &adapter->state))
		return;

	FUNC0(&adapter->mbx_poll_work, qlcnic_83xx_mbx_poll_work);
	FUNC1(adapter->qlcnic_wq, &adapter->mbx_poll_work, 0);
}