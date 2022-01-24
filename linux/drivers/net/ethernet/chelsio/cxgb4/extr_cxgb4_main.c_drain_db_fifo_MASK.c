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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  SGE_DBFIFO_STATUS2_A ; 
 int /*<<< orphan*/  SGE_DBFIFO_STATUS_A ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct adapter *adap, int usecs)
{
	u32 v1, v2, lp_count, hp_count;

	do {
		v1 = FUNC7(adap, SGE_DBFIFO_STATUS_A);
		v2 = FUNC7(adap, SGE_DBFIFO_STATUS2_A);
		if (FUNC4(adap->params.chip)) {
			lp_count = FUNC2(v1);
			hp_count = FUNC0(v1);
		} else {
			lp_count = FUNC3(v1);
			hp_count = FUNC1(v2);
		}

		if (lp_count == 0 && hp_count == 0)
			break;
		FUNC6(TASK_UNINTERRUPTIBLE);
		FUNC5(FUNC8(usecs));
	} while (1);
}