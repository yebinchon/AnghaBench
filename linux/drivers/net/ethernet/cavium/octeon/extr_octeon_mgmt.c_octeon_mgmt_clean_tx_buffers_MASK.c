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
struct TYPE_5__ {int /*<<< orphan*/  tstamp; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
union mgmt_port_ring_entry {TYPE_2__ s; int /*<<< orphan*/  d64; } ;
struct TYPE_4__ {int orcnt; } ;
union cvmx_mixx_orcnt {void* u64; TYPE_1__ s; } ;
typedef  void* u64 ;
typedef  int /*<<< orphan*/  ts ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct octeon_mgmt {size_t tx_next_clean; int /*<<< orphan*/  netdev; scalar_t__ mix; int /*<<< orphan*/  port; int /*<<< orphan*/  dev; TYPE_3__ tx_list; int /*<<< orphan*/  tx_current_fill; int /*<<< orphan*/ * tx_ring; int /*<<< orphan*/  tx_ring_handle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ MIX_ORCNT ; 
 int OCTEON_MGMT_TX_RING_SIZE ; 
 struct sk_buff* FUNC2 (TYPE_3__*) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,struct skb_shared_hwtstamps*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct octeon_mgmt *p)
{
	union cvmx_mixx_orcnt mix_orcnt;
	union mgmt_port_ring_entry re;
	struct sk_buff *skb;
	int cleaned = 0;
	unsigned long flags;

	mix_orcnt.u64 = FUNC3(p->mix + MIX_ORCNT);
	while (mix_orcnt.s.orcnt) {
		FUNC14(&p->tx_list.lock, flags);

		mix_orcnt.u64 = FUNC3(p->mix + MIX_ORCNT);

		if (mix_orcnt.s.orcnt == 0) {
			FUNC15(&p->tx_list.lock, flags);
			break;
		}

		FUNC6(p->dev, p->tx_ring_handle,
					FUNC12(OCTEON_MGMT_TX_RING_SIZE),
					DMA_BIDIRECTIONAL);

		re.d64 = p->tx_ring[p->tx_next_clean];
		p->tx_next_clean =
			(p->tx_next_clean + 1) % OCTEON_MGMT_TX_RING_SIZE;
		skb = FUNC2(&p->tx_list);

		mix_orcnt.u64 = 0;
		mix_orcnt.s.orcnt = 1;

		/* Acknowledge to hardware that we have the buffer.  */
		FUNC4(p->mix + MIX_ORCNT, mix_orcnt.u64);
		p->tx_current_fill--;

		FUNC15(&p->tx_list.lock, flags);

		FUNC7(p->dev, re.s.addr, re.s.len,
				 DMA_TO_DEVICE);

		/* Read the hardware TX timestamp if one was recorded */
		if (FUNC16(re.s.tstamp)) {
			struct skb_shared_hwtstamps ts;
			u64 ns;

			FUNC8(&ts, 0, sizeof(ts));
			/* Read the timestamp */
			ns = FUNC3(FUNC1(p->port));
			/* Remove the timestamp from the FIFO */
			FUNC4(FUNC0(p->port), 0);
			/* Tell the kernel about the timestamp */
			ts.hwtstamp = FUNC11(ns);
			FUNC13(skb, &ts);
		}

		FUNC5(skb);
		cleaned++;

		mix_orcnt.u64 = FUNC3(p->mix + MIX_ORCNT);
	}

	if (cleaned && FUNC9(p->netdev))
		FUNC10(p->netdev);
}