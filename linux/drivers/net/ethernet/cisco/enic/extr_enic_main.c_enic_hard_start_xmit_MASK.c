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
struct vnic_wq {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct enic {unsigned int wq_count; int /*<<< orphan*/ * wq_lock; struct vnic_wq* wq; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {scalar_t__ gso_size; scalar_t__ nr_frags; } ;

/* Variables and functions */
 scalar_t__ ENIC_DESC_MAX_SPLITS ; 
 scalar_t__ ENIC_NON_TSO_MAX_DESC ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct enic*,struct vnic_wq*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct netdev_queue* FUNC3 (struct net_device*,unsigned int) ; 
 struct enic* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct netdev_queue*) ; 
 scalar_t__ FUNC7 (struct netdev_queue*) ; 
 unsigned int FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 TYPE_1__* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct vnic_wq*) ; 
 int /*<<< orphan*/  FUNC15 (struct vnic_wq*) ; 

__attribute__((used)) static netdev_tx_t FUNC16(struct sk_buff *skb,
	struct net_device *netdev)
{
	struct enic *enic = FUNC4(netdev);
	struct vnic_wq *wq;
	unsigned int txq_map;
	struct netdev_queue *txq;

	if (skb->len <= 0) {
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	txq_map = FUNC8(skb) % enic->wq_count;
	wq = &enic->wq[txq_map];
	txq = FUNC3(netdev, txq_map);

	/* Non-TSO sends must fit within ENIC_NON_TSO_MAX_DESC descs,
	 * which is very likely.  In the off chance it's going to take
	 * more than * ENIC_NON_TSO_MAX_DESC, linearize the skb.
	 */

	if (FUNC10(skb)->gso_size == 0 &&
	    FUNC10(skb)->nr_frags + 1 > ENIC_NON_TSO_MAX_DESC &&
	    FUNC9(skb)) {
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	FUNC12(&enic->wq_lock[txq_map]);

	if (FUNC14(wq) <
	    FUNC10(skb)->nr_frags + ENIC_DESC_MAX_SPLITS) {
		FUNC6(txq);
		/* This is a hard error, log it */
		FUNC2(netdev, "BUG! Tx ring full when queue awake!\n");
		FUNC13(&enic->wq_lock[txq_map]);
		return NETDEV_TX_BUSY;
	}

	FUNC1(enic, wq, skb);

	if (FUNC14(wq) < MAX_SKB_FRAGS + ENIC_DESC_MAX_SPLITS)
		FUNC6(txq);
	FUNC11(skb);
	if (!FUNC5() || FUNC7(txq))
		FUNC15(wq);

	FUNC13(&enic->wq_lock[txq_map]);

	return NETDEV_TX_OK;
}