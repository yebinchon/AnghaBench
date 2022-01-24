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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct enetc_rx_swbd {int page_offset; int /*<<< orphan*/  page; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_alloc_errs; } ;
struct enetc_bdr {TYPE_1__ stats; } ;

/* Variables and functions */
 int ENETC_RXB_PAD ; 
 int /*<<< orphan*/  ENETC_RXB_TRUESIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 struct enetc_rx_swbd* FUNC2 (struct enetc_bdr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct enetc_bdr*,struct enetc_rx_swbd*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct enetc_bdr *rx_ring,
						int i, u16 size)
{
	struct enetc_rx_swbd *rx_swbd = FUNC2(rx_ring, i, size);
	struct sk_buff *skb;
	void *ba;

	ba = FUNC4(rx_swbd->page) + rx_swbd->page_offset;
	skb = FUNC1(ba - ENETC_RXB_PAD, ENETC_RXB_TRUESIZE);
	if (FUNC6(!skb)) {
		rx_ring->stats.rx_alloc_errs++;
		return NULL;
	}

	FUNC5(skb, ENETC_RXB_PAD);
	FUNC0(skb, size);

	FUNC3(rx_ring, rx_swbd);

	return skb;
}