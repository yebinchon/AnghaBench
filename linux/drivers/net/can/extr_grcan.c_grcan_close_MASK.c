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
struct net_device {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/ * echo_skb; scalar_t__ echo_skb_max; int /*<<< orphan*/  state; } ;
struct grcan_priv {int closing; int /*<<< orphan*/  txdlc; int /*<<< orphan*/  echo_skb; TYPE_1__ can; int /*<<< orphan*/  lock; int /*<<< orphan*/  rr_timer; int /*<<< orphan*/  hang_timer; scalar_t__ need_txbug_workaround; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct grcan_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct grcan_priv *priv = FUNC7(dev);
	unsigned long flags;

	FUNC6(&priv->napi);

	FUNC9(&priv->lock, flags);

	priv->closing = true;
	if (priv->need_txbug_workaround) {
		FUNC1(&priv->hang_timer);
		FUNC1(&priv->rr_timer);
	}
	FUNC8(dev);
	FUNC4(dev);
	priv->can.state = CAN_STATE_STOPPED;

	FUNC10(&priv->lock, flags);

	FUNC2(dev->irq, dev);
	FUNC0(dev);

	FUNC3(dev);
	priv->can.echo_skb_max = 0;
	priv->can.echo_skb = NULL;
	FUNC5(priv->echo_skb);
	FUNC5(priv->txdlc);

	return 0;
}