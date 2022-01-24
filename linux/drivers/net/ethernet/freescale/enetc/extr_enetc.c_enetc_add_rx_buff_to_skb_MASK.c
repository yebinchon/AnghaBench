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
struct enetc_rx_swbd {int /*<<< orphan*/  page_offset; int /*<<< orphan*/  page; } ;
struct enetc_bdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_RXB_TRUESIZE ; 
 struct enetc_rx_swbd* FUNC0 (struct enetc_bdr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct enetc_bdr*,struct enetc_rx_swbd*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct enetc_bdr *rx_ring, int i,
				     u16 size, struct sk_buff *skb)
{
	struct enetc_rx_swbd *rx_swbd = FUNC0(rx_ring, i, size);

	FUNC2(skb, FUNC3(skb)->nr_frags, rx_swbd->page,
			rx_swbd->page_offset, size, ENETC_RXB_TRUESIZE);

	FUNC1(rx_ring, rx_swbd);
}