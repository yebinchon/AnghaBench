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
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int cntinfo; int /*<<< orphan*/  pbuf; } ;
struct sgiseeq_tx_desc {TYPE_3__ tdma; struct sk_buff* skb; } ;
struct sgiseeq_private {int tx_new; int tx_old; int /*<<< orphan*/  tx_lock; struct sgiseeq_tx_desc* tx_desc; struct hpc3_ethregs* hregs; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {int tx_bytes; } ;
struct net_device {TYPE_2__ dev; TYPE_1__ stats; } ;
struct hpc3_ethregs {int tx_ctrl; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ETH_ZLEN ; 
 int HPC3_ETXCTRL_ACTIVE ; 
 int HPCDMA_BCNT ; 
 int HPCDMA_EOX ; 
 int HPCDMA_EOXP ; 
 int HPCDMA_XIE ; 
 int HPCDMA_XIU ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sgiseeq_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct sgiseeq_tx_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct sgiseeq_tx_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,struct sgiseeq_private*,struct hpc3_ethregs*) ; 
 struct sgiseeq_private* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static netdev_tx_t
FUNC12(struct sk_buff *skb, struct net_device *dev)
{
	struct sgiseeq_private *sp = FUNC7(dev);
	struct hpc3_ethregs *hregs = sp->hregs;
	unsigned long flags;
	struct sgiseeq_tx_desc *td;
	int len, entry;

	FUNC10(&sp->tx_lock, flags);

	/* Setup... */
	len = skb->len;
	if (len < ETH_ZLEN) {
		if (FUNC9(skb, ETH_ZLEN)) {
			FUNC11(&sp->tx_lock, flags);
			return NETDEV_TX_OK;
		}
		len = ETH_ZLEN;
	}

	dev->stats.tx_bytes += len;
	entry = sp->tx_new;
	td = &sp->tx_desc[entry];
	FUNC4(dev, td);

	/* Create entry.  There are so many races with adding a new
	 * descriptor to the chain:
	 * 1) Assume that the HPC is off processing a DMA chain while
	 *    we are changing all of the following.
	 * 2) Do no allow the HPC to look at a new descriptor until
	 *    we have completely set up it's state.  This means, do
	 *    not clear HPCDMA_EOX in the current last descritptor
	 *    until the one we are adding looks consistent and could
	 *    be processes right now.
	 * 3) The tx interrupt code must notice when we've added a new
	 *    entry and the HPC got to the end of the chain before we
	 *    added this new entry and restarted it.
	 */
	td->skb = skb;
	td->tdma.pbuf = FUNC3(dev->dev.parent, skb->data,
				       len, DMA_TO_DEVICE);
	td->tdma.cntinfo = (len & HPCDMA_BCNT) |
	                   HPCDMA_XIU | HPCDMA_EOXP | HPCDMA_XIE | HPCDMA_EOX;
	FUNC5(dev, td);
	if (sp->tx_old != sp->tx_new) {
		struct sgiseeq_tx_desc *backend;

		backend = &sp->tx_desc[FUNC1(sp->tx_new)];
		FUNC4(dev, backend);
		backend->tdma.cntinfo &= ~HPCDMA_EOX;
		FUNC5(dev, backend);
	}
	sp->tx_new = FUNC0(sp->tx_new); /* Advance. */

	/* Maybe kick the HPC back into motion. */
	if (!(hregs->tx_ctrl & HPC3_ETXCTRL_ACTIVE))
		FUNC6(dev, sp, hregs);

	if (!FUNC2(sp))
		FUNC8(dev);
	FUNC11(&sp->tx_lock, flags);

	return NETDEV_TX_OK;
}