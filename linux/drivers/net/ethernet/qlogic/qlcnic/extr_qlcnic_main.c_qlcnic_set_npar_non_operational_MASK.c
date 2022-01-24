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
typedef  scalar_t__ u32 ;
struct qlcnic_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_CRB_DEV_NPAR_STATE ; 
 scalar_t__ QLCNIC_DEV_NPAR_NON_OPER ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 

__attribute__((used)) static void
FUNC4(struct qlcnic_adapter *adapter)
{
	u32 state;

	state = FUNC0(adapter, QLCNIC_CRB_DEV_NPAR_STATE);
	if (state == QLCNIC_DEV_NPAR_NON_OPER)
		return;

	if (FUNC2(adapter))
		return;
	FUNC1(adapter, QLCNIC_CRB_DEV_NPAR_STATE,
			    QLCNIC_DEV_NPAR_NON_OPER);
	FUNC3(adapter);
}