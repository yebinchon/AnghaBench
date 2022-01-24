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
struct qlcnic_adapter {int /*<<< orphan*/  portnum; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  QLCNIC_CRB_DRV_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int
FUNC5(struct qlcnic_adapter *adapter)
{
	u32  val;

	if (FUNC3(adapter))
		return -EBUSY;

	val = FUNC1(adapter, QLCNIC_CRB_DRV_STATE);
	FUNC0(val, adapter->portnum);
	FUNC2(adapter, QLCNIC_CRB_DRV_STATE, val);

	FUNC4(adapter);

	return 0;
}