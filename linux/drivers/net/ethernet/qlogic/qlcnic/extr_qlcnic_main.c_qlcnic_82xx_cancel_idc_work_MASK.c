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
struct TYPE_3__ {int /*<<< orphan*/  func; } ;
struct TYPE_4__ {TYPE_1__ work; } ;
struct qlcnic_adapter {TYPE_2__ fw_work; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __QLCNIC_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct qlcnic_adapter *adapter)
{
	while (FUNC1(__QLCNIC_RESETTING, &adapter->state))
		FUNC2(10000, 11000);

	if (!adapter->fw_work.work.func)
		return;

	FUNC0(&adapter->fw_work);
}