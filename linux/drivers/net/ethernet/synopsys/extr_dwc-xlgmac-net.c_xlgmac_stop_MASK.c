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
struct xlgmac_hw_ops {int /*<<< orphan*/  (* exit ) (struct xlgmac_pdata*) ;int /*<<< orphan*/  (* disable_rx ) (struct xlgmac_pdata*) ;int /*<<< orphan*/  (* disable_tx ) (struct xlgmac_pdata*) ;} ;
struct xlgmac_pdata {unsigned int channel_count; struct xlgmac_channel* channel_head; struct net_device* netdev; struct xlgmac_hw_ops hw_ops; } ;
struct xlgmac_channel {int /*<<< orphan*/  queue_index; int /*<<< orphan*/  tx_ring; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct netdev_queue* FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct xlgmac_pdata*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct xlgmac_pdata*) ; 

__attribute__((used)) static void FUNC9(struct xlgmac_pdata *pdata)
{
	struct xlgmac_hw_ops *hw_ops = &pdata->hw_ops;
	struct net_device *netdev = pdata->netdev;
	struct xlgmac_channel *channel;
	struct netdev_queue *txq;
	unsigned int i;

	FUNC2(netdev);
	FUNC8(pdata);
	hw_ops->disable_tx(pdata);
	hw_ops->disable_rx(pdata);
	FUNC6(pdata);
	FUNC7(pdata, 1);
	hw_ops->exit(pdata);

	channel = pdata->channel_head;
	for (i = 0; i < pdata->channel_count; i++, channel++) {
		if (!channel->tx_ring)
			continue;

		txq = FUNC0(netdev, channel->queue_index);
		FUNC1(txq);
	}
}