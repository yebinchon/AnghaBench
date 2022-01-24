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
struct sk_buff {int dummy; } ;
struct sbmac_softc {int /*<<< orphan*/  sbm_lock; int /*<<< orphan*/  sbm_txdma; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 struct sbmac_softc* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static netdev_tx_t FUNC5(struct sk_buff *skb, struct net_device *dev)
{
	struct sbmac_softc *sc = FUNC0(dev);
	unsigned long flags;

	/* lock eth irq */
	FUNC3(&sc->sbm_lock, flags);

	/*
	 * Put the buffer on the transmit ring.  If we
	 * don't have room, stop the queue.
	 */

	if (FUNC2(&(sc->sbm_txdma),skb)) {
		/* XXX save skb that we could not send */
		FUNC1(dev);
		FUNC4(&sc->sbm_lock, flags);

		return NETDEV_TX_BUSY;
	}

	FUNC4(&sc->sbm_lock, flags);

	return NETDEV_TX_OK;
}