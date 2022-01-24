#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_errors; } ;
struct TYPE_5__ {TYPE_1__ gen; } ;
struct TYPE_6__ {scalar_t__ QueueSkb; int /*<<< orphan*/  SendSkbQueue; TYPE_2__ MacStat; } ;
struct s_smc {TYPE_3__ os; } ;
struct net_device {int dummy; } ;
typedef  TYPE_3__ skfddi_priv ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 scalar_t__ FDDI_K_LLC_LEN ; 
 scalar_t__ FDDI_K_LLC_ZLEN ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct s_smc* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC7(struct sk_buff *skb,
				       struct net_device *dev)
{
	struct s_smc *smc = FUNC1(dev);
	skfddi_priv *bp = &smc->os;

	FUNC4("skfp_send_pkt\n");

	/*
	 * Verify that incoming transmit request is OK
	 *
	 * Note: The packet size check is consistent with other
	 *               Linux device drivers, although the correct packet
	 *               size should be verified before calling the
	 *               transmit routine.
	 */

	if (!(skb->len >= FDDI_K_LLC_ZLEN && skb->len <= FDDI_K_LLC_LEN)) {
		bp->MacStat.gen.tx_errors++;	/* bump error counter */
		// dequeue packets from xmt queue and send them
		FUNC2(dev);
		FUNC0(skb);
		return NETDEV_TX_OK;	/* return "success" */
	}
	if (bp->QueueSkb == 0) {	// return with tbusy set: queue full

		FUNC3(dev);
		return NETDEV_TX_BUSY;
	}
	bp->QueueSkb--;
	FUNC6(&bp->SendSkbQueue, skb);
	FUNC5(FUNC1(dev));
	if (bp->QueueSkb == 0) {
		FUNC3(dev);
	}
	return NETDEV_TX_OK;

}