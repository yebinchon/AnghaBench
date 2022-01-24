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
struct sk_buff {int dummy; } ;
struct ioc3_private {int rx_ci; int rx_pi; int /*<<< orphan*/ * rxr; int /*<<< orphan*/  dma_dev; struct sk_buff** rx_skbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  RX_BUF_SIZE ; 
 int RX_RING_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ioc3_private *ip)
{
	int rx_entry, n_entry;
	struct sk_buff *skb;

	n_entry = ip->rx_ci;
	rx_entry = ip->rx_pi;

	while (n_entry != rx_entry) {
		skb = ip->rx_skbs[n_entry];
		if (skb) {
			FUNC2(ip->dma_dev,
					 FUNC0(ip->rxr[n_entry]),
					 RX_BUF_SIZE, DMA_FROM_DEVICE);
			FUNC1(skb);
		}
		n_entry = (n_entry + 1) & RX_RING_MASK;
	}
}