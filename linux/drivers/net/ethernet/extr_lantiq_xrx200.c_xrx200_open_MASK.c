#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dma; int /*<<< orphan*/  napi; } ;
struct TYPE_3__ {int /*<<< orphan*/  dma; int /*<<< orphan*/  napi; } ;
struct xrx200_priv {TYPE_2__ chan_rx; TYPE_1__ chan_tx; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct xrx200_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(struct net_device *net_dev)
{
	struct xrx200_priv *priv = FUNC3(net_dev);

	FUNC2(&priv->chan_tx.napi);
	FUNC1(&priv->chan_tx.dma);
	FUNC0(&priv->chan_tx.dma);

	FUNC2(&priv->chan_rx.napi);
	FUNC1(&priv->chan_rx.dma);
	/* The boot loader does not always deactivate the receiving of frames
	 * on the ports and then some packets queue up in the PPE buffers.
	 * They already passed the PMAC so they do not have the tags
	 * configured here. Read the these packets here and drop them.
	 * The HW should have written them into memory after 10us
	 */
	FUNC5(20, 40);
	FUNC6(&priv->chan_rx);
	FUNC0(&priv->chan_rx.dma);

	FUNC4(net_dev);

	return 0;
}