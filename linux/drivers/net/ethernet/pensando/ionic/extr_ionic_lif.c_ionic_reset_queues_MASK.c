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
struct ionic_lif {int /*<<< orphan*/  state; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IONIC_LIF_QUEUE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ionic_lif*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct ionic_lif *lif)
{
	bool running;
	int err = 0;

	/* Put off the next watchdog timeout */
	FUNC5(lif->netdev);

	if (!FUNC3(lif, IONIC_LIF_QUEUE_RESET))
		return -EBUSY;

	running = FUNC4(lif->netdev);
	if (running)
		err = FUNC2(lif->netdev);
	if (!err && running)
		FUNC1(lif->netdev);

	FUNC0(IONIC_LIF_QUEUE_RESET, lif->state);

	return err;
}