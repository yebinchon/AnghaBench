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
typedef  scalar_t__ u32 ;
struct skb_shared_info {int dummy; } ;
struct bnx2 {int rx_max_pg_ring; int rx_max_pg_ring_idx; int flags; int rx_buf_use_size; int rx_max_ring; int rx_max_ring_idx; scalar_t__ rx_ring_size; scalar_t__ rx_jumbo_thresh; scalar_t__ rx_buf_size; scalar_t__ rx_copy_thresh; scalar_t__ rx_pg_ring_size; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ mtu; } ;

/* Variables and functions */
 int BNX2_FLAG_JUMBO_BROKEN ; 
 int /*<<< orphan*/  BNX2_MAX_RX_PG_RINGS ; 
 int /*<<< orphan*/  BNX2_MAX_RX_RINGS ; 
 scalar_t__ BNX2_MAX_TOTAL_RX_PG_DESC_CNT ; 
 int /*<<< orphan*/  BNX2_RX_ALIGN ; 
 scalar_t__ BNX2_RX_COPY_THRESH ; 
 int BNX2_RX_DESC_CNT ; 
 scalar_t__ BNX2_RX_OFFSET ; 
 scalar_t__ ETH_HLEN ; 
 scalar_t__ NET_SKB_PAD ; 
 int FUNC0 (scalar_t__) ; 
 int PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bnx2 *bp, u32 size)
{
	u32 rx_size, rx_space, jumbo_size;

	/* 8 for CRC and VLAN */
	rx_size = bp->dev->mtu + ETH_HLEN + BNX2_RX_OFFSET + 8;

	rx_space = FUNC1(rx_size + BNX2_RX_ALIGN) + NET_SKB_PAD +
		FUNC1(sizeof(struct skb_shared_info));

	bp->rx_copy_thresh = BNX2_RX_COPY_THRESH;
	bp->rx_pg_ring_size = 0;
	bp->rx_max_pg_ring = 0;
	bp->rx_max_pg_ring_idx = 0;
	if ((rx_space > PAGE_SIZE) && !(bp->flags & BNX2_FLAG_JUMBO_BROKEN)) {
		int pages = FUNC0(bp->dev->mtu - 40) >> PAGE_SHIFT;

		jumbo_size = size * pages;
		if (jumbo_size > BNX2_MAX_TOTAL_RX_PG_DESC_CNT)
			jumbo_size = BNX2_MAX_TOTAL_RX_PG_DESC_CNT;

		bp->rx_pg_ring_size = jumbo_size;
		bp->rx_max_pg_ring = FUNC2(jumbo_size,
							BNX2_MAX_RX_PG_RINGS);
		bp->rx_max_pg_ring_idx =
			(bp->rx_max_pg_ring * BNX2_RX_DESC_CNT) - 1;
		rx_size = BNX2_RX_COPY_THRESH + BNX2_RX_OFFSET;
		bp->rx_copy_thresh = 0;
	}

	bp->rx_buf_use_size = rx_size;
	/* hw alignment + build_skb() overhead*/
	bp->rx_buf_size = FUNC1(bp->rx_buf_use_size + BNX2_RX_ALIGN) +
		NET_SKB_PAD + FUNC1(sizeof(struct skb_shared_info));
	bp->rx_jumbo_thresh = rx_size - BNX2_RX_OFFSET;
	bp->rx_ring_size = size;
	bp->rx_max_ring = FUNC2(size, BNX2_MAX_RX_RINGS);
	bp->rx_max_ring_idx = (bp->rx_max_ring * BNX2_RX_DESC_CNT) - 1;
}