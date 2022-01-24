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
struct sunqe_buffers {unsigned char** tx_buf; } ;
struct sunqe {int tx_new; int /*<<< orphan*/  lock; scalar_t__ qcregs; TYPE_2__* qe_block; int /*<<< orphan*/  buffers_dvma; struct sunqe_buffers* buffers; } ;
struct sk_buff {int len; } ;
struct TYPE_6__ {int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_3__ stats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  scalar_t__ __u32 ;
struct TYPE_5__ {TYPE_1__* qe_txd; } ;
struct TYPE_4__ {int tx_flags; scalar_t__ tx_addr; } ;

/* Variables and functions */
 scalar_t__ CREG_CTRL ; 
 int /*<<< orphan*/  CREG_CTRL_TWAKEUP ; 
 scalar_t__ CREG_TIMASK ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int FUNC0 (int) ; 
 int TXD_EOP ; 
 int TXD_LENGTH ; 
 int TXD_OWN ; 
 int TXD_SOP ; 
 int TXD_UPDATE ; 
 scalar_t__ FUNC1 (struct sunqe*) ; 
 int TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sunqe* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sunqe*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_buf ; 

__attribute__((used)) static netdev_tx_t FUNC11(struct sk_buff *skb, struct net_device *dev)
{
	struct sunqe *qep = FUNC3(dev);
	struct sunqe_buffers *qbufs = qep->buffers;
	__u32 txbuf_dvma, qbufs_dvma = (__u32)qep->buffers_dvma;
	unsigned char *txbuf;
	int len, entry;

	FUNC9(&qep->lock);

	FUNC5(qep);

	len = skb->len;
	entry = qep->tx_new;

	txbuf = &qbufs->tx_buf[entry & (TX_RING_SIZE - 1)][0];
	txbuf_dvma = qbufs_dvma +
		FUNC6(tx_buf, (entry & (TX_RING_SIZE - 1)));

	/* Avoid a race... */
	qep->qe_block->qe_txd[entry].tx_flags = TXD_UPDATE;

	FUNC8(skb, txbuf, len);

	qep->qe_block->qe_txd[entry].tx_addr = txbuf_dvma;
	qep->qe_block->qe_txd[entry].tx_flags =
		(TXD_OWN | TXD_SOP | TXD_EOP | (len & TXD_LENGTH));
	qep->tx_new = FUNC0(entry);

	/* Get it going. */
	FUNC7(CREG_CTRL_TWAKEUP, qep->qcregs + CREG_CTRL);

	dev->stats.tx_packets++;
	dev->stats.tx_bytes += len;

	if (FUNC1(qep) <= 0) {
		/* Halt the net queue and enable tx interrupts.
		 * When the tx queue empties the tx irq handler
		 * will wake up the queue and return us back to
		 * the lazy tx reclaim scheme.
		 */
		FUNC4(dev);
		FUNC7(0, qep->qcregs + CREG_TIMASK);
	}
	FUNC10(&qep->lock);

	FUNC2(skb);

	return NETDEV_TX_OK;
}