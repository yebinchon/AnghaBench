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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct qlcnic_adapter {int /*<<< orphan*/  portnum; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QLCNIC_CRB_DRV_STATE ; 
 scalar_t__ QLCNIC_DEV_NEED_QUISCENT ; 
 scalar_t__ QLCNIC_DEV_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int
FUNC7(struct qlcnic_adapter *adapter, u8 state)
{
	u32  val;

	FUNC4(state != QLCNIC_DEV_NEED_RESET &&
			state != QLCNIC_DEV_NEED_QUISCENT);

	if (FUNC5(adapter))
		return -EIO;

	val = FUNC2(adapter, QLCNIC_CRB_DRV_STATE);

	if (state == QLCNIC_DEV_NEED_RESET)
		FUNC1(val, adapter->portnum);
	else if (state == QLCNIC_DEV_NEED_QUISCENT)
		FUNC0(val, adapter->portnum);

	FUNC3(adapter, QLCNIC_CRB_DRV_STATE, val);

	FUNC6(adapter);

	return 0;
}