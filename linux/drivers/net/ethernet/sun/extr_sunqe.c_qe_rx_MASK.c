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
typedef  int u32 ;
struct sunqe_buffers {unsigned char** rx_buf; } ;
struct sunqe {int rx_new; struct net_device* dev; int /*<<< orphan*/  buffers_dvma; struct sunqe_buffers* buffers; TYPE_1__* qe_block; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct qe_rxd {int rx_flags; scalar_t__ rx_addr; } ;
struct TYPE_4__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_2__ stats; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_3__ {struct qe_rxd* qe_rxd; } ;
typedef  int RXD_PKT_SZ ;

/* Variables and functions */
 int ETH_ZLEN ; 
 int FUNC0 (int) ; 
 int RXD_LENGTH ; 
 int RXD_OWN ; 
 int RX_RING_MAXSIZE ; 
 int RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 struct sk_buff* FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rx_buf ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC8(struct sunqe *qep)
{
	struct qe_rxd *rxbase = &qep->qe_block->qe_rxd[0];
	struct net_device *dev = qep->dev;
	struct qe_rxd *this;
	struct sunqe_buffers *qbufs = qep->buffers;
	__u32 qbufs_dvma = (__u32)qep->buffers_dvma;
	int elem = qep->rx_new;
	u32 flags;

	this = &rxbase[elem];
	while (!((flags = this->rx_flags) & RXD_OWN)) {
		struct sk_buff *skb;
		unsigned char *this_qbuf =
			&qbufs->rx_buf[elem & (RX_RING_SIZE - 1)][0];
		__u32 this_qbuf_dvma = qbufs_dvma +
			FUNC4(rx_buf, (elem & (RX_RING_SIZE - 1)));
		struct qe_rxd *end_rxd =
			&rxbase[(elem+RX_RING_SIZE)&(RX_RING_MAXSIZE-1)];
		int len = (flags & RXD_LENGTH) - 4;  /* QE adds ether FCS size to len */

		/* Check for errors. */
		if (len < ETH_ZLEN) {
			dev->stats.rx_errors++;
			dev->stats.rx_length_errors++;
			dev->stats.rx_dropped++;
		} else {
			skb = FUNC2(dev, len + 2);
			if (skb == NULL) {
				dev->stats.rx_dropped++;
			} else {
				FUNC7(skb, 2);
				FUNC6(skb, len);
				FUNC5(skb, this_qbuf,
						 len);
				skb->protocol = FUNC1(skb, qep->dev);
				FUNC3(skb);
				dev->stats.rx_packets++;
				dev->stats.rx_bytes += len;
			}
		}
		end_rxd->rx_addr = this_qbuf_dvma;
		end_rxd->rx_flags = (RXD_OWN | ((RXD_PKT_SZ) & RXD_LENGTH));

		elem = FUNC0(elem);
		this = &rxbase[elem];
	}
	qep->rx_new = elem;
}