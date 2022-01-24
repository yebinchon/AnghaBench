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
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {int /*<<< orphan*/  db_full_task; int /*<<< orphan*/  workq; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXGB4_CONTROL_DB_FULL ; 
 int DBFIFO_HP_INT_F ; 
 int DBFIFO_LP_INT_F ; 
 int /*<<< orphan*/  SGE_INT_ENABLE3_A ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC5(struct adapter *adap)
{
	if (FUNC1(adap->params.chip)) {
		FUNC0(adap);
		FUNC2(adap, CXGB4_CONTROL_DB_FULL);
		FUNC4(adap, SGE_INT_ENABLE3_A,
				 DBFIFO_HP_INT_F | DBFIFO_LP_INT_F, 0);
		FUNC3(adap->workq, &adap->db_full_task);
	}
}