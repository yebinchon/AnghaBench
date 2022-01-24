#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sge {scalar_t__ espibug_timeout; int /*<<< orphan*/  espibug_timer; TYPE_1__* adapter; int /*<<< orphan*/  tx_reclaim_timer; int /*<<< orphan*/  sge_control; int /*<<< orphan*/ * freelQ; } ;
struct TYPE_3__ {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ A_SG_CONTROL ; 
 int F_FL0_ENABLE ; 
 int F_FL1_ENABLE ; 
 scalar_t__ TX_RECLAIM_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sge*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC6(struct sge *sge)
{
	FUNC4(sge, &sge->freelQ[0]);
	FUNC4(sge, &sge->freelQ[1]);

	FUNC5(sge->sge_control, sge->adapter->regs + A_SG_CONTROL);
	FUNC0(sge->adapter, F_FL0_ENABLE | F_FL1_ENABLE);
	FUNC3(sge->adapter->regs + A_SG_CONTROL); /* flush */

	FUNC2(&sge->tx_reclaim_timer, jiffies + TX_RECLAIM_PERIOD);

	if (FUNC1(sge->adapter))
		FUNC2(&sge->espibug_timer, jiffies + sge->espibug_timeout);
}