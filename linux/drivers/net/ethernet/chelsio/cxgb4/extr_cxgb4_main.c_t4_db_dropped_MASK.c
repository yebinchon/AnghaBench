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
struct adapter {int /*<<< orphan*/  db_drop_task; int /*<<< orphan*/  workq; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXGB4_CONTROL_DB_FULL ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct adapter *adap)
{
	if (FUNC1(adap->params.chip)) {
		FUNC0(adap);
		FUNC2(adap, CXGB4_CONTROL_DB_FULL);
	}
	FUNC3(adap->workq, &adap->db_drop_task);
}