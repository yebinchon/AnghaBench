#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int tstamp; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
union mgmt_port_ring_entry {scalar_t__ d64; TYPE_1__ s; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct octeon_mgmt {int tx_current_fill; size_t tx_next; scalar_t__ mix; int /*<<< orphan*/  tx_ring_handle; int /*<<< orphan*/  dev; TYPE_4__ tx_list; scalar_t__* tx_ring; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_7__ {int tx_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ MIX_ORING2 ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int OCTEON_MGMT_TX_RING_SIZE ; 
 int SKBTX_HW_TSTAMP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct octeon_mgmt* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 TYPE_3__* FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static netdev_tx_t
FUNC15(struct sk_buff *skb, struct net_device *netdev)
{
	struct octeon_mgmt *p = FUNC5(netdev);
	union mgmt_port_ring_entry re;
	unsigned long flags;
	netdev_tx_t rv = NETDEV_TX_BUSY;

	re.d64 = 0;
	re.s.tstamp = ((FUNC11(skb)->tx_flags & SKBTX_HW_TSTAMP) != 0);
	re.s.len = skb->len;
	re.s.addr = FUNC2(p->dev, skb->data,
				   skb->len,
				   DMA_TO_DEVICE);

	FUNC12(&p->tx_list.lock, flags);

	if (FUNC14(p->tx_current_fill >= FUNC9(OCTEON_MGMT_TX_RING_SIZE) - 1)) {
		FUNC13(&p->tx_list.lock, flags);
		FUNC6(netdev);
		FUNC12(&p->tx_list.lock, flags);
	}

	if (FUNC14(p->tx_current_fill >=
		     FUNC9(OCTEON_MGMT_TX_RING_SIZE))) {
		FUNC13(&p->tx_list.lock, flags);
		FUNC4(p->dev, re.s.addr, re.s.len,
				 DMA_TO_DEVICE);
		goto out;
	}

	FUNC0(&p->tx_list, skb);

	/* Put it in the ring.  */
	p->tx_ring[p->tx_next] = re.d64;
	p->tx_next = (p->tx_next + 1) % OCTEON_MGMT_TX_RING_SIZE;
	p->tx_current_fill++;

	FUNC13(&p->tx_list.lock, flags);

	FUNC3(p->dev, p->tx_ring_handle,
				   FUNC10(OCTEON_MGMT_TX_RING_SIZE),
				   DMA_BIDIRECTIONAL);

	netdev->stats.tx_packets++;
	netdev->stats.tx_bytes += skb->len;

	/* Ring the bell.  */
	FUNC1(p->mix + MIX_ORING2, 1);

	FUNC7(netdev);
	rv = NETDEV_TX_OK;
out:
	FUNC8(netdev);
	return rv;
}