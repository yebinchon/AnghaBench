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
struct timer_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_state; int /*<<< orphan*/  txerrs; } ;
struct scc_channel {int /*<<< orphan*/  dev; TYPE_1__ stat; int /*<<< orphan*/  tx_t; } ;

/* Variables and functions */
 int /*<<< orphan*/  TXS_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct scc_channel* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct scc_channel* scc ; 
 int /*<<< orphan*/  FUNC4 (struct scc_channel*) ; 
 int /*<<< orphan*/  tx_wdog ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct scc_channel *scc = FUNC1(scc, t, tx_wdog);

	FUNC0(&scc->tx_t);
	FUNC2(scc->dev);	/* don't pile on the wabbit! */

	FUNC4(scc);
	scc->stat.txerrs++;
	scc->stat.tx_state = TXS_IDLE;

	FUNC3(scc->dev);	
}