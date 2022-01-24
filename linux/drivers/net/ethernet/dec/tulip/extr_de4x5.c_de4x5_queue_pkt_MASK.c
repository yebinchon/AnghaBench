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
typedef  int u_long ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct net_device {int base_addr; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {scalar_t__ lock; int /*<<< orphan*/  queue; } ;
struct TYPE_3__ {int tx_bytes; } ;
struct de4x5_private {size_t tx_new; int txRingSize; TYPE_2__ cache; int /*<<< orphan*/  lock; TYPE_1__ stats; scalar_t__* tx_skb; scalar_t__ interrupt; int /*<<< orphan*/  tx_enable; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  DE4X5_IMR ; 
 int /*<<< orphan*/  DE4X5_OMR ; 
 int /*<<< orphan*/  DE4X5_STS ; 
 int /*<<< orphan*/  DE4X5_TPD ; 
 int DEBUG_TX ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  POLL_DEMAND ; 
 int TD_FS ; 
 int TD_IC ; 
 int TD_LS ; 
 scalar_t__ TX_BUFFS_AVAIL ; 
 int de4x5_debug ; 
 struct sk_buff* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 struct de4x5_private* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static netdev_tx_t
FUNC17(struct sk_buff *skb, struct net_device *dev)
{
    struct de4x5_private *lp = FUNC7(dev);
    u_long iobase = dev->base_addr;
    u_long flags = 0;

    FUNC10(dev);
    if (!lp->tx_enable)                   /* Cannot send for now */
		goto tx_err;

    /*
    ** Clean out the TX ring asynchronously to interrupts - sometimes the
    ** interrupts are lost by delayed descriptor status updates relative to
    ** the irq assertion, especially with a busy PCI bus.
    */
    FUNC14(&lp->lock, flags);
    FUNC3(dev);
    FUNC15(&lp->lock, flags);

    /* Test if cache is already locked - requeue skb if so */
    if (FUNC16(0, (void *)&lp->cache.lock) && !lp->interrupt)
		goto tx_err;

    /* Transmit descriptor ring full or stale skb */
    if (FUNC8(dev) || (u_long) lp->tx_skb[lp->tx_new] > 1) {
	if (lp->interrupt) {
	    FUNC2(dev, skb);          /* Requeue the buffer */
	} else {
	    FUNC1(dev, skb);
	}
	if (de4x5_debug & DEBUG_TX) {
	    FUNC12("%s: transmit busy, lost media or stale skb found:\n  STS:%08x\n  tbusy:%d\n  IMR:%08x\n  OMR:%08x\n Stale skb: %s\n",dev->name, FUNC5(DE4X5_STS), FUNC8(dev), FUNC5(DE4X5_IMR), FUNC5(DE4X5_OMR), ((u_long) lp->tx_skb[lp->tx_new] > 1) ? "YES" : "NO");
	}
    } else if (skb->len > 0) {
	/* If we already have stuff queued locally, use that first */
	if (!FUNC13(&lp->cache.queue) && !lp->interrupt) {
	    FUNC1(dev, skb);
	    skb = FUNC0(dev);
	}

	while (skb && !FUNC8(dev) &&
	       (u_long) lp->tx_skb[lp->tx_new] <= 1) {
	    FUNC14(&lp->lock, flags);
	    FUNC10(dev);
	    FUNC6(dev, skb->data, TD_IC | TD_LS | TD_FS | skb->len, skb);
 	    lp->stats.tx_bytes += skb->len;
	    FUNC11(POLL_DEMAND, DE4X5_TPD);/* Start the TX */

	    lp->tx_new = (lp->tx_new + 1) % lp->txRingSize;

	    if (TX_BUFFS_AVAIL) {
		FUNC9(dev);         /* Another pkt may be queued */
	    }
	    skb = FUNC0(dev);
	    FUNC15(&lp->lock, flags);
	}
	if (skb) FUNC2(dev, skb);
    }

    lp->cache.lock = 0;

    return NETDEV_TX_OK;
tx_err:
	FUNC4(skb);
	return NETDEV_TX_OK;
}