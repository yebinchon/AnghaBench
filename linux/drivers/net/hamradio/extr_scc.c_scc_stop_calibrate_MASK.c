#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timer_list {int dummy; } ;
struct scc_channel {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  tx_wdog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R6 ; 
 int /*<<< orphan*/  R7 ; 
 int /*<<< orphan*/  RES_EXT_INT ; 
 int /*<<< orphan*/  TX_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct scc_channel* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct scc_channel* scc ; 
 int /*<<< orphan*/  FUNC4 (struct scc_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tx_wdog ; 
 int /*<<< orphan*/  FUNC7 (struct scc_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	struct scc_channel *scc = FUNC2(scc, t, tx_wdog);
	unsigned long flags;
	
	FUNC5(&scc->lock, flags);
	FUNC1(&scc->tx_wdog);
	FUNC4(scc, TX_OFF);
	FUNC7(scc, R6, 0);
	FUNC7(scc, R7, FLAG);
	FUNC0(scc->ctrl,RES_EXT_INT);	/* reset ext/status interrupts */
	FUNC0(scc->ctrl,RES_EXT_INT);

	FUNC3(scc->dev);
	FUNC6(&scc->lock, flags);
}