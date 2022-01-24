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
struct TYPE_3__ {scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct scc_channel {int /*<<< orphan*/  lock; int /*<<< orphan*/  ctrl; TYPE_1__ tx_wdog; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R6 ; 
 int /*<<< orphan*/  R7 ; 
 int /*<<< orphan*/  RES_EXT_INT ; 
 int /*<<< orphan*/  TX_ON ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scc_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct scc_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scc_stop_calibrate ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct scc_channel*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void
FUNC9(struct scc_channel *scc, int duration, unsigned char pattern)
{
	unsigned long flags;
	
	FUNC6(&scc->lock, flags);
	FUNC3(scc->dev);
	FUNC4(scc);

	FUNC2(&scc->tx_wdog);

	scc->tx_wdog.function = scc_stop_calibrate;
	scc->tx_wdog.expires = jiffies + HZ*duration;
	FUNC1(&scc->tx_wdog);

	/* This doesn't seem to work. Why not? */	
	FUNC8(scc, R6, 0);
	FUNC8(scc, R7, pattern);

	/* 
	 * Don't know if this works. 
	 * Damn, where is my Z8530 programming manual...? 
	 */

	FUNC0(scc->ctrl,RES_EXT_INT);	/* reset ext/status interrupts */
	FUNC0(scc->ctrl,RES_EXT_INT);

	FUNC5(scc, TX_ON);
	FUNC7(&scc->lock, flags);
}