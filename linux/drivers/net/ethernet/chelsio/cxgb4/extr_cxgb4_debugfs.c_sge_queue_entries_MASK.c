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
struct TYPE_2__ {int /*<<< orphan*/  ethqsets; } ;
struct adapter {TYPE_1__ sge; } ;

/* Variables and functions */
 int CXGB4_TX_MAX ; 
 int CXGB4_ULD_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MAX_CTRL_QUEUES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct adapter const*,int) ; 
 scalar_t__ FUNC4 (struct adapter const*,int) ; 
 scalar_t__ FUNC5 (struct adapter const*,int) ; 
 int /*<<< orphan*/  uld_mutex ; 

__attribute__((used)) static int FUNC6(const struct adapter *adap)
{
	int tot_uld_entries = 0;
	int i;

	FUNC1(&uld_mutex);
	for (i = 0; i < CXGB4_TX_MAX; i++)
		tot_uld_entries += FUNC5(adap, i);

	for (i = 0; i < CXGB4_ULD_MAX; i++) {
		tot_uld_entries += FUNC4(adap, i);
		tot_uld_entries += FUNC3(adap, i);
	}
	FUNC2(&uld_mutex);

	return FUNC0(adap->sge.ethqsets, 4) +
	       tot_uld_entries +
	       FUNC0(MAX_CTRL_QUEUES, 4) + 1;
}