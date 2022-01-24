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
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct enetc_bdr {int /*<<< orphan*/  ndev; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct enetc_bdr *rx_ring,
			      struct sk_buff *skb)
{
	FUNC1(skb, rx_ring->index);
	skb->protocol = FUNC0(skb, rx_ring->ndev);
}