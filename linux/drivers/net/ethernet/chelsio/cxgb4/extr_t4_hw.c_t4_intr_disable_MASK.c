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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CHELSIO_T5 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PL_INT_MAP0_A ; 
 int /*<<< orphan*/  PL_PF_INT_ENABLE_A ; 
 int /*<<< orphan*/  PL_WHOAMI_A ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct adapter *adapter)
{
	u32 whoami, pf;

	if (FUNC4(adapter->pdev))
		return;

	whoami = FUNC5(adapter, PL_WHOAMI_A);
	pf = FUNC0(adapter->params.chip) <= CHELSIO_T5 ?
			FUNC2(whoami) : FUNC3(whoami);

	FUNC7(adapter, FUNC1(PL_PF_INT_ENABLE_A), 0);
	FUNC6(adapter, PL_INT_MAP0_A, 1 << pf, 0);
}