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
struct adapter {TYPE_1__* uld; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 unsigned int CXGB4_ULD_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uld_mutex ; 

void FUNC3(struct adapter *adap)
{
	unsigned int i;

	FUNC1(&uld_mutex);
	for (i = 0; i < CXGB4_ULD_MAX; i++) {
		if (!adap->uld[i].handle)
			continue;

		FUNC0(adap, i);
	}
	FUNC2(&uld_mutex);
}