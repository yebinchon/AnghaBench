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
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ionic_queue {int /*<<< orphan*/  drop; int /*<<< orphan*/  stop; } ;
struct ionic_lif {int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  IONIC_LIF_UP ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct ionic_queue*,int) ; 
 int FUNC2 (struct ionic_queue*,struct sk_buff*) ; 
 int FUNC3 (struct ionic_queue*,struct sk_buff*) ; 
 int FUNC4 (struct ionic_queue*,struct sk_buff*) ; 
 struct ionic_queue* FUNC5 (struct ionic_lif*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ionic_lif*,scalar_t__) ; 
 struct ionic_lif* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

netdev_tx_t FUNC12(struct sk_buff *skb, struct net_device *netdev)
{
	u16 queue_index = FUNC8(skb);
	struct ionic_lif *lif = FUNC7(netdev);
	struct ionic_queue *q;
	int ndescs;
	int err;

	if (FUNC11(!FUNC10(IONIC_LIF_UP, lif->state))) {
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	if (FUNC11(!FUNC6(lif, queue_index)))
		queue_index = 0;
	q = FUNC5(lif, queue_index);

	ndescs = FUNC3(q, skb);
	if (ndescs < 0)
		goto err_out_drop;

	if (FUNC11(FUNC1(q, ndescs)))
		return NETDEV_TX_BUSY;

	if (FUNC9(skb))
		err = FUNC4(q, skb);
	else
		err = FUNC2(q, skb);

	if (err)
		goto err_out_drop;

	/* Stop the queue if there aren't descriptors for the next packet.
	 * Since our SG lists per descriptor take care of most of the possible
	 * fragmentation, we don't need to have many descriptors available.
	 */
	FUNC1(q, 4);

	return NETDEV_TX_OK;

err_out_drop:
	q->stop++;
	q->drop++;
	FUNC0(skb);
	return NETDEV_TX_OK;
}