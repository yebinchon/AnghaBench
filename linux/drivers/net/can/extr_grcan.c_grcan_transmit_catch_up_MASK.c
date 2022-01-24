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
struct net_device {int dummy; } ;
struct TYPE_2__ {int ctrlmode; } ;
struct grcan_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  hang_timer; scalar_t__ need_txbug_workaround; TYPE_1__ can; int /*<<< orphan*/  closing; int /*<<< orphan*/  resetting; } ;

/* Variables and functions */
 int CAN_CTRLMODE_LISTENONLY ; 
 int FUNC0 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct grcan_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, int budget)
{
	struct grcan_priv *priv = FUNC2(dev);
	unsigned long flags;
	int work_done;

	FUNC4(&priv->lock, flags);

	work_done = FUNC0(dev, budget, true);
	if (work_done) {
		if (!priv->resetting && !priv->closing &&
		    !(priv->can.ctrlmode & CAN_CTRLMODE_LISTENONLY))
			FUNC3(dev);

		/* With napi we don't get TX interrupts for a while,
		 * so prevent a running reset while catching up
		 */
		if (priv->need_txbug_workaround)
			FUNC1(&priv->hang_timer);
	}

	FUNC5(&priv->lock, flags);

	return work_done;
}