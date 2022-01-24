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
typedef  scalar_t__ u8 ;
struct xgbe_prv_data {scalar_t__ num_tcs; unsigned int tx_q_count; scalar_t__* q2tc_map; TYPE_1__* ets; int /*<<< orphan*/  netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * prio_tc; } ;

/* Variables and functions */
 unsigned int IEEE_8021QAZ_MAX_TCS ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct xgbe_prv_data *pdata)
{
	unsigned int offset, queue, prio;
	u8 i;

	FUNC0(pdata->netdev);
	if (!pdata->num_tcs)
		return;

	FUNC1(pdata->netdev, pdata->num_tcs);

	for (i = 0, queue = 0, offset = 0; i < pdata->num_tcs; i++) {
		while ((queue < pdata->tx_q_count) &&
		       (pdata->q2tc_map[queue] == i))
			queue++;

		FUNC4(pdata, drv, pdata->netdev, "TC%u using TXq%u-%u\n",
			  i, offset, queue - 1);
		FUNC3(pdata->netdev, i, queue - offset, offset);
		offset = queue;
	}

	if (!pdata->ets)
		return;

	for (prio = 0; prio < IEEE_8021QAZ_MAX_TCS; prio++)
		FUNC2(pdata->netdev, prio,
				       pdata->ets->prio_tc[prio]);
}