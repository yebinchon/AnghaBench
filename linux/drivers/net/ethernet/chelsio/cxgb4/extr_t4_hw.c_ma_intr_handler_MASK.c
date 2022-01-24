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
struct adapter {int /*<<< orphan*/  pdev_dev; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_INT_CAUSE_A ; 
 int /*<<< orphan*/  MA_INT_WRAP_STATUS_A ; 
 int /*<<< orphan*/  MA_PARITY_ERROR_STATUS1_A ; 
 int /*<<< orphan*/  MA_PARITY_ERROR_STATUS2_A ; 
 int MEM_PERR_INT_CAUSE_F ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MEM_WRAP_INT_CAUSE_F ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct adapter *adap)
{
	u32 v, status = FUNC5(adap, MA_INT_CAUSE_A);

	if (status & MEM_PERR_INT_CAUSE_F) {
		FUNC2(adap->pdev_dev,
			  "MA parity error, parity status %#x\n",
			  FUNC5(adap, MA_PARITY_ERROR_STATUS1_A));
		if (FUNC3(adap->params.chip))
			FUNC2(adap->pdev_dev,
				  "MA parity error, parity status %#x\n",
				  FUNC5(adap,
					      MA_PARITY_ERROR_STATUS2_A));
	}
	if (status & MEM_WRAP_INT_CAUSE_F) {
		v = FUNC5(adap, MA_INT_WRAP_STATUS_A);
		FUNC2(adap->pdev_dev, "MA address wrap-around error by "
			  "client %u to address %#x\n",
			  FUNC1(v),
			  FUNC0(v) << 4);
	}
	FUNC6(adap, MA_INT_CAUSE_A, status);
	FUNC4(adap);
}